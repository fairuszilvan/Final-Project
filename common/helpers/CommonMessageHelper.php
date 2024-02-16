<?php

namespace common\helpers;

use Yii;
use yii\base\Component;

class CommonMessageHelper extends Component
{

    public static function ajaxInputMessageOnSave()
    {
        $msg = '
        <div class="callout callout-info">
        Setelah data tersimpan maka induk akan terload otomatis. Beberapa isian yang sudah anda isi di form sebelumnya (induk) akan direset kembali!
            </div>
          ';
        return $msg;
    }

}
