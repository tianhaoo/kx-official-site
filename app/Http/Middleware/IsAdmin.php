<?php

namespace App\Http\Middleware;

use Closure;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(session()->get('user_info')->role_priority > 5)
            return redirect()->back()->withErrors("很抱歉，您没有权限");
        return $next($request);
    }
}
