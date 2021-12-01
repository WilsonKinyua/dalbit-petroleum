<?php

namespace App\Models;

use \DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ContactInformation extends Model
{
    use SoftDeletes;
    use HasFactory;

    public $table = 'contact_informations';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'division_id',
        'country_id',
        'location',
        'telephone',
        'fax',
        'email',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function contactsDivisions()
    {
        return $this->hasMany(Division::class, 'contacts_id', 'id');
    }

    public function division()
    {
        return $this->belongsTo(Category::class, 'division_id');
    }

    public function country()
    {
        return $this->belongsTo(Country::class, 'country_id');
    }

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
