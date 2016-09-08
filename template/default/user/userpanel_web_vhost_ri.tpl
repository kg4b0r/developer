<section class="content-header">
    <h1><?php echo $gsprache->webspace;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="userpanel.php?w=wv"><i class="fa fa-cubes"></i> <?php echo $gsprache->webspace;?></a></li>
        <li><i class="fa fa-refresh"></i> <?php echo $dedicatedLanguage->reinstall;?></li>
        <li class="active"><?php echo $dns;?></li>
    </ol>
</section>


<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <form role="form" action="userpanel.php?w=wv&amp;d=ri&amp;id=<?php echo $id;?>&amp;r=wv" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">

                    <input type="hidden" name="token" value="<?php echo token();?>">
                    <input type="hidden" name="action" value="ri">

                    <div class="box-body">
                        <div class="form-group">
                            <label for="dns"><?php echo $sprache->dns?></label>
                            <input id="dns" class="form-control" value="<?php echo $dns;?>" disabled>
                        </div>
                    </div>

                    <div class="box-footer">
                        <button class="btn btn-warning" id="inputEdit" type="submit"><i class="fa fa-refresh"></i> <?php echo $dedicatedLanguage->reinstall;?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>