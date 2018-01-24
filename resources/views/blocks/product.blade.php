<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="portlet light portlet-fit bordered">
        @if ($product->sale == 1)
                    <div class="mt-element-ribbon" style="position:absolute; width: 160px; right: 10px; ">
                        <div class="ribbon ribbon-vertical-right ribbon-color-warning uppercase ">
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                @endif
        <div class="portlet-title">
            <div class="caption">
                <i class=" icon-layers font-green"></i>
                <span class="caption-subject font-green bold uppercase">{{ $product->name }}</span>
                <div class="caption-desc font-grey-cascade"><pre class="mt-code">@php
                        if ($product->sale == 1)
                            echo number_format($product->sale_price, 2, '.', '');
                        else
                            echo number_format($product->price, 2, '.', '');
                        @endphp</pre> for @php
                        echo number_format($product->weight, 2, '.', '');
                        if ($product->weight_type == 1)
                            echo " liter";
                        else
                        if ($product->weight_type == 2)
                            echo " kg.";
                        else
                            echo " gr.";
                    @endphp
                </div>
            </div>
        </div>
        <div class="portlet-body">
            <div class="mt-element-overlay" style="height:220;">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mt-overlay-3 mt-overlay-3-icons">
                            <img src="../assets/pages/img/page_general_search/05.jpg">
                            <div class="mt-overlay">
                                <h2>Overlay Title</h2>
                                <ul class="mt-info">
                                    <li>
                                        <a class="btn default btn-outline" href="javascript:;">
                                            <i class="icon-magnifier"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="btn default btn-outline" href="javascript:;" onclick ="AddOne({{$product->id}})">
                                            <i class="icon-plus"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>