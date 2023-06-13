<?php

namespace App\Jobs;

use App\Models\car;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class CarListing implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    protected $listing;
    public function __construct(array $listing)
    {
        $this->listing= $listing;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(car $car)
    {
        print_r($this->listing);
    }
}
