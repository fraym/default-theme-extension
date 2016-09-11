<block type="config">
    <template>
        <![CDATA[

        <div class="row">
            <div class="col-xs-12">
                <label>{_('Columns')}</label>
                <input type="number" min="1" max="12" class="form-control" name="config[columns]" value="{$config.columns}" />
            </div>
        </div>

        ]]>
    </template>
</block>

<div class="container">
    <div class="row">
        {@$colSize = floor(12 / $config.columns)}
        {@$colSize = $colSize < 1 ? 1 : $colSize}
        {@$colSize = $colSize > 12 ? 12 : $colSize}
        {@$cols = floor(12 / $colSize)}
        {for $i=1; $i<=$cols; $i++}
            <div class="col-md-{$colSize}">
                <block type="content">
                    <view id="grid-col-{$i}" unique="true" renderElement="false">
                    </view>
                </block>
            </div>
        {/for}
    </div>
</div>