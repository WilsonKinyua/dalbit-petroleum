<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Support\Facades\Mail;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    // sentry
    public function report(Throwable $exception)
    {
        if (app()->bound('sentry') && $this->shouldReport($exception)) {
            app('sentry')->captureException($exception);
        }

        // if ($exception instanceof \Exception) {
        //     Mail::send('welcome', ['error' => $exception->getMessage()], function ($m) {
        //         $m->to('wilsonkinyuam@gmail.com', 'Wilson Kinyua')->subject('Error Report' . ' on ' . date('Y-m-d H:i:s') . '. From: ' . request()->ip());
        //     });
        // }

        parent::report($exception);
    }
}
