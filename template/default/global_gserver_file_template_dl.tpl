<section class="content-header">
    <h1><?php echo $gsprache->file.' '.$gsprache->template;?></h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo $targetFile;?>"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="<?php echo $targetFile;?>?w=gs"><i class="fa fa-gamepad"></i> <?php echo $gsprache->gameserver;?></a></li>
        <li><a href="<?php echo $targetFile;?>?w=gt"><i class="fa fa-floppy-o"></i> <?php echo $gsprache->file.' '.$gsprache->template;?></a></li>
        <li><?php echo $gsprache->del;?></li>
        <li class="active"><?php echo $name;?></li>
    </ol>
</section>


<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-danger">
                <div class="box-body">
                    <form role="form" action="<?php echo $targetFile;?>?w=gt&amp;d=dl&amp;id=<?php echo $id;?>&amp;r=gt" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">

                        <input type="hidden" name="token" value="<?php echo token();?>">
                        <input type="hidden" name="action" value="dl">

                        <div class="form-group">
                            <label for="inputName"><?php echo $sprache->description;?></label>
                            <input class="form-control" id="inputName" type="text" name="name" value="<?php echo $name;?>" disabled="disabled">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="inputEdit"></label>
                            <button class="btn btn-danger" id="inputEdit" type="submit"><i class="fa fa-trash-o"> <?php echo $gsprache->del;?></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>