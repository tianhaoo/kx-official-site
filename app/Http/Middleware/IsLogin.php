<?php

namespace App\Http\Middleware;

use Closure;

class IsLogin
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
            if (session()->get('isLogin') != 1) {
            	return redirect('/')->withErrors('not login');
            }
            return $next($request);
    }
}
