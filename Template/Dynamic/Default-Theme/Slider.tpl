<block type="config">
    <template>
        <![CDATA[

        {function localeConfig($config, $localeId)}

            <div class="row">
                <div class="col-xs-12">
                    <label>Headline</label>
                    <input type="text" class="form-control" name="config[{$localeId}][headline]" value="{$config->$localeId->headline}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-4">
                    <label>Desktop: Items per slide</label>
                    <input type="number" class="form-control" name="config[{$localeId}][desktopItems]" min="1" value="{$config->$localeId->desktopItems}" />
                </div>
                <div class="col-xs-4">
                    <label>Tablet: Items per slide</label>
                    <input type="number" class="form-control" name="config[{$localeId}][tabletItems]" min="1" value="{$config->$localeId->tabletItems}" />
                </div>
                <div class="col-xs-4">
                    <label>Mobile: Items per slide</label>
                    <input type="number" class="form-control" name="config[{$localeId}][mobileItems]" min="1" value="{$config->$localeId->mobileItems}" />
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <label>Background image</label>
                    <input type="text" class="form-control" name="config[{$localeId}][backgroundImage]" value="{$config->$localeId->backgroundImage}" data-absolutepath="false" data-filepath="true" data-singlefileselect="1" data-filefilter="*.jpg,*.png" />
                </div>
            </div>
            {function createSlideItem($k, $item = null, $localeId)}
                <div class="slide-item row" data-repeat="slide-item-{$localeId}">
                    <div class="col-xs-12">
                        <div class="pull-right">
                            <i data-repeat-item-remove class="fa fa-times"></i>
                        </div>
                        <h4>Item <span data-repeat-item-pos>{$k}</span></h4>
                        <div class="row">
                            <div class="col-xs-12">
                                <label>
                                    Text
                                </label>
                                <textarea name="config[{$localeId}][items][{$k}][rte]" class="form-control" data-rte='{ "toolbar":[{ "name":"document","groups":["mode","document","doctools"],"items":["Source","-"] },{ "name":"clipboard","groups":["clipboard","undo"],"items":["Cut","Copy","Paste","PasteText","PasteFromWord","-","Undo","Redo"] },{ "name":"editing","groups":["find","selection","spellchecker"],"items":["Find","Replace","-","SelectAll","-","Scayt"] },{ "name":"tools","items":["Maximize","ShowBlocks"] },"/",{ "name":"insert","items":["Image","Flash","Table","HorizontalRule","SpecialChar","Iframe"] },{ "name":"paragraph","groups":["list","indent","blocks","align","bidi"],"items":["NumberedList","BulletedList","-","Outdent","Indent","-","Blockquote","CreateDiv","-","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","-","BidiLtr","BidiRtl"] },{ "name":"links","items":["Link","Unlink","Anchor"] },{ "name":"basicstyles","groups":["basicstyles","cleanup"],"items":["Bold","Italic","Underline","Strike","Subscript","Superscript","-","RemoveFormat"] },{ "name":"styles","items":["Styles","Format","Font","FontSize"] },{ "name":"colors","items":["TextColor","BGColor"] }] }'>{$item.rte}</textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label>Image</label>
                                <input type="text" class="form-control" name="config[{$localeId}][items][{$k}][image]" value="{$item.image}" data-absolutepath="false" data-filepath="true" data-singlefileselect="1" data-filefilter="*.jpg,*.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="config[{$localeId}][items][{$k}][roundImage]" value="1"{if $item.roundImage} checked{/if}/>
                                        Round image
                                    </label>
                                </div>
                            </div>
                        </div>
                        <hr/>
                    </div>
                </div>
            {/function}

            {if count((array)$config->$localeId->items)}
                {foreach $config->$localeId->items as $k => $item}
                    {createSlideItem($k, $item, $localeId)}
                {/foreach}
            {else}
                {createSlideItem(1, null, $localeId)}
            {/if}
        {/function}

        <div>
            <ul class="nav nav-tabs" role="tablist">
                {foreach $locales as $key => $locale}
                    <li role="presentation" class="{if isFirst($locales, $key)}active{/if}"><a href="#locale-{$locale.id}" data-toggle="tab">{$locale.name}</a></li>
                {/foreach}
            </ul>
            <div class="tab-content">
                {foreach $locales as $key => $locale}
                    <div role="tabpanel" class="tab-pane{if isFirst($locales, $key)} active{/if}" id="locale-{$locale.id}">
                        {localeConfig($config, $locale.id)}

                        <div class="pull-right clearfix">
                            <button id="add-slide" type="button" class="btn btn-default" data-repeat-add="slide-item-{$locale.id}">{_('Add slide item')}</button>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>

        ]]>
    </template>
</block>

<div{if $inEditMode} data-inline-editor-image="config[{$locale}][backgroundImage]"{/if} class="text-center slider-wrapper"{if $config->$locale->backgroundImage} style="background-image:url('<block type="image" width="1200" srcOnly="true" method="resize" src="{$config->$locale->backgroundImage}"></block>')" {/if}>
<div class="overlay">
    <div class="container">
        <div class="section-title center">
            <h2{if $inEditMode} data-inline-editor-field="config[{$locale}][headline]"{/if}>{{$config->$locale->headline}}</h2>
            <div class="line">
                <hr>
            </div>
        </div>
        {@$id = uniqid()}
        <div id="slider-{$id}" class="owl-carousel owl-theme">
            {foreach $config->$locale->items as $k => $item}
                <div class="item">
                    <div class="thumbnail"{if $inEditMode} data-inline-editor-image="config[{$locale}][items][{$k}][image]"{/if}>
                        <block type="image" autosize="1" src="{$item.image}"{if $item.roundImage} class="img-circle team-img"{/if}></block>
                        <div{if $inEditMode} data-inline-editor-rte="true" data-inline-editor-field="config[{$locale}][items][{$k}][rte]"{/if} class="caption">
                            {{$item.rte}}
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</div>
</div>
{if $refreshBlock}
    <!-- Init the slider js after save -->
    <script>
        $("#slider-{$id}").owlCarousel({
            navigation : false,
            autoHeight : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            itemsCustom : [
                [0, {$config->$locale->mobileItems}],
                [450, {$config->$locale->mobileItems}],
                [600, {$config->$locale->mobileItems}],
                [700, {$config->$locale->tabletItems}],
                [1000, {$config->$locale->tabletItems}],
                [1200, {$config->$locale->desktopItems}],
                [1400, {$config->$locale->desktopItems}],
                [1600, {$config->$locale->desktopItems}]
            ]
        });
    </script>
{/if}
<block type="javascript">
    $("#slider-{$id}").owlCarousel({
    navigation : false,
    autoHeight : true,
    slideSpeed : 300,
    paginationSpeed : 400,
    itemsCustom : [
    [0, {$config->$locale->mobileItems}],
    [450, {$config->$locale->mobileItems}],
    [600, {$config->$locale->mobileItems}],
    [700, {$config->$locale->tabletItems}],
    [1000, {$config->$locale->tabletItems}],
    [1200, {$config->$locale->desktopItems}],
    [1400, {$config->$locale->desktopItems}],
    [1600, {$config->$locale->desktopItems}]
    ]
    });
</block>