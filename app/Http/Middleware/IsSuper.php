<?php

namespace App\Http\Middleware;

use Closure;

class IsSuper
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
            if (session()->get('user_info')->role_priority != 1) {
            	return redirect()->back()->withErrors('no access');
            }
            return $next($request);
    }
}
