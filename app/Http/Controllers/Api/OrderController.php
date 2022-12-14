<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Order;
use Error;
use Exception;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $order = new Order();
        try {
            $request->validate([
                'address' => 'required|min:5',
                'total' => 'required',
                'menu_items' => 'required|min:1'
            ]);
            $order->total = $request['total'];
            $order->address = $request['address'];

            $order->save();
        } catch (Exception $e) {
            return response()->json($e->getMessage());
        }

        try {
            foreach ($request->menu_items as $menu_item) {
                $order->menu()->attach($menu_item['id']);
            }
        } catch (Exception $e) {
            return response()->json($e->getMessage());
        }

        return response()->json($order);
    }
}
