<nav>

    <?php 
        foreach($buttonList as $button) {
            ?>
                <a class="navButton" href="<?php echo $button['url']?>"><?php echo $button['label']?></a>

            <?php
        }
    ?>

    
</nav>