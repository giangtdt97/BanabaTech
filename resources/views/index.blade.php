@extends('layout.master')
@section('content')
    <div class="hero-wrap">
        <div class="overlay"></div>
        <div class="container-fluid">
            <div class="slider-text d-md-flex align-items-center" data-scrollax-parent="true">

                <div class="one-forth ftco-animate align-self-md-center" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4">
                        <strong class="typewrite" data-period="4000" data-type='[ "{{trans('services.Digitize')}}", "{{trans('services.Mobile')}}", "{{trans('services.Offshore')}}", "{{trans('services.Web')}}" ]'>

                            <span class="wrap"></span>
                        </strong>
                    </h1>
                    <p class="" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">{{trans('services.advertise01')}}</p>
                    <!--            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="#" class="btn btn-primary px-4 py-3">Get a Quote</a> <a href="#" class="btn btn-primary btn-outline-primary px-4 py-3">Our Portfolio</a></p>-->
                    <img src="{{asset('images/logo-white-min.png')}}" alt="#" style="width: 250px">

                </div>
                <div class="one-half align-self-md-end align-self-sm-center" style="margin-top:auto;">
                    <div class="slider-carousel owl-carousel">
                       <!-- <div class="item">
                            <img src="public/images/dashboard_full_1.png" class="img-fluid img"alt="">
                        </div>-->
                        <div class="item">
                            <img src="{{asset('images/dashboard_full_2-min.png')}}" class="img-fluid img"alt="">
                        </div>
                        <div class="item">
                            <img src="{{asset('images/dashboard_full_3-min.png')}}" class="img-fluid img"alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section ftco-section-2">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 d-none d-sm-block">
                    <h3 class="heading-white">{{trans('services.IT')}}!</h3>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-services">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <h2 class="mb-2">{{trans('services.Our')}}</h2>
                    <span class="subheading">{{trans('services.We')}} <br>{{trans('services.Engineer')}}</span>
                </div>
            </div>
            <div class="row">
                    @foreach($services as $service)
                        <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                            <div class="media block-6 services d-block text-center">
                                <div class="d-flex justify-content-center">
                                    <div class="icon">
                                        <span class="{{$service->services_icon}}"></span>
                                    </div>
                                </div>
                                <div class="media-body p-2 mt-3">
                                    <h3 class="heading">@if(App::isLocale('en')){{$service->services_name}}</h3>
                                   <p>{{$service->services_content}}</p>
                                    @else{{$service->services_name_vi}}
                                    <p>{{$service->services_content_vi}}</p>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
            </div>
        </div>

        <section class="ftco-section ftco-section-2">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h3 class="heading-white">{{trans('services.introduce01')}}</h3>
                    </div>
                </div>
            </div>
        </section>

        <div class="container-wrap mt-5">
            <div class="row d-flex no-gutters">
                <div class="col-md-6 img ftco-animate" style="background-image: url({{Voyager::image($feature_images[0]->image)}})">
                </div>
                <div class="col-md-6 d-flex">
                    <div class="services-wrap">
                        <div class="heading-section mb-5 ftco-animate">
                            <h2 class="mb-2">{{trans('services.technologies')}}</h2>
                            <span class="subheading">{{trans('services.introduce02')}}</span>
                        </div>
                        @foreach($teches as $tech)
                        <div class="list-services d-flex ftco-animate">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="{{$tech->icon}}"></span>
                            </div>
                            <div class="text">
                                <h3>{{$tech->title}}</h3>
                                {!!$tech->content!!}
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-section-2">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h3 class="heading-white">{{trans('services.Provide')}}.</h3>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section testimony-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <h2 class="mb-2">{{trans('services.about us')}}</h2>
                    <span class="subheading">{{trans('services.aboutusdetail')}}</span>
                </div>
            </div>
            <div class="row justify-content-center ftco-animate">
                <div class="col-md-8">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        @foreach($humanResources as $humanResource)
                            <div class="item">
                                <div class="testimony-wrap p-4 pb-5">
                                    <div class="user-img mb-5" style="background-image: url({{Voyager::image( $humanResource->avatar )}})">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                                    </div>
                                    <div class="text text-center">
                                        <p class="name">{{$humanResource->name}}</p>
                                        <span class="position">{{$humanResource->position}}</span>
                                    </div>
                                    <div class="text text-center content">
                                        <p class="">{!!$humanResource->description!!}</p>
                                    </div>
                                    <p class="mobi-block show_hide"><a href="javascript:void(0)" class="button" data-content="toggle-text">Read More...</a></p>

                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-quote">
        <div class="container">
            <div class="row">
                <div class="col-md-6 pr-md-5 aside-stretch py-5 choose">
                    <div class="heading-section heading-section-white mb-5 ftco-animate">
                        <h2 class="mb-2">{{trans('index.development')}}</h2>
                    </div>
                    <div class="ftco-animate">
                        <p>{{trans('index.offshore')}}</p>
                        <ul class="un-styled my-5">
                            <li><span class="icon-check"></span>{{trans('index.dedicated')}}</li>
                            <li><span class="icon-check"></span>{{trans('index.solutions')}}</li>
                            <li><span class="icon-check"></span>{{trans('services.introduce01')}}</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 py-5 pl-md-5">
                    <div class="heading-section mb-5 ftco-animate">
                        <h2 class="mb-2">{{trans('menu.get a quote')}}</h2>
                    </div>
                    <form action="#" class="ftco-animate">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Full Name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Website">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="submit" value="Get a Quote" class="btn btn-primary py-3 px-5">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
