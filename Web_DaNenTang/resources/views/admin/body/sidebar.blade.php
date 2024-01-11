<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div>
					<img src="{{ asset('adminbackend/assets/images/logo-icon.png') }}" class="logo-icon" alt="logo icon">
				</div>
				<div>
					<h4 class="logo-text">Admin</h4>
				</div>
				<div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
				</div>
			</div>
			<!--navigation-->
			<ul class="metismenu" id="menu">

					<li>
					<a href="{{ route('admin.dashobard') }}">
						<div class="parent-icon"><i class='bx bx-home-circle'></i>
						</div>
						<div class="menu-title">Bảng điều khiển</div>
					</a>
				</li>

				@if(Auth::user()->can('brand.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class='bx bx-cookie'></i>
						</div>
						<div class="menu-title">Brand</div>
					</a>
					<ul>
						@if(Auth::user()->can('brand.list'))
						<li> <a href="{{ route('all.brand') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Brand</a>
						</li>
						@endif
						@if(Auth::user()->can('brand.add'))
						<li> <a href="{{ route('add.brand') }}"><i class="bx bx-right-arrow-alt"></i>Thêm Brand mới </a>
						</li>
						 @endif
					</ul>
				</li>
				@endif

                 @if(Auth::user()->can('cat.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="bx bx-category"></i>
						</div>
						<div class="menu-title">Danh mục</div>
					</a>
					<ul>
						@if(Auth::user()->can('category.list'))
						<li> <a href="{{ route('all.category') }}"><i class="bx bx-right-arrow-alt"></i>Tất cả danh mục</a>
						</li>
						@endif
						@if(Auth::user()->can('category.add'))
						<li> <a href="{{ route('add.category') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới danh mục</a>
						</li>
						@endif
						 
					</ul>
				</li>
				@endif
  @if(Auth::user()->can('subcategory.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-codepen"></i>
						</div>
						<div class="menu-title">Danh mục con</div>
					</a>
					<ul>
						@if(Auth::user()->can('subcategory.list'))
						<li> <a href="{{ route('all.subcategory') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách danh mục con</a>
						</li>
						@endif
						@if(Auth::user()->can('subcategory.add'))
						<li> <a href="{{ route('add.subcategory') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới danh mục con</a>
						</li>
						@endif
						 
					</ul>
				</li>
	@endif
              @if(Auth::user()->can('product.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-fresh-juice"></i>
						</div>
						<div class="menu-title">Quản lý sản phẩm</div>
					</a>
					<ul>
						@if(Auth::user()->can('product.list'))
						<li> <a href="{{ route('all.product') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách sản phẩm</a>
						</li>
						@endif
						@if(Auth::user()->can('product.add'))
						<li> <a href="{{ route('add.product') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới sản phẩm</a>
						</li>
						@endif
						 
					</ul>
				</li>
				@endif

				@if(Auth::user()->can('slider.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-gallery"></i>
						</div>
						<div class="menu-title">Quản lý Slider</div>
					</a>
					<ul>
						@if(Auth::user()->can('slider.list'))
						<li> <a href="{{ route('all.slider') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Slider</a>
						</li>
						@endif
						 @if(Auth::user()->can('slider.add'))
						<li> <a href="{{ route('add.slider') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới Slider</a>
						</li>
						@endif
						 
					</ul>
				</li>
@endif
				@if(Auth::user()->can('ads.menu'))

				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-image"></i>
						</div>
						<div class="menu-title">Quản lý Banner</div>
					</a>
					<ul>
						@if(Auth::user()->can('ads.list'))
						<li> <a href="{{ route('all.banner') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Banner</a>
						</li>
						@endif
						@if(Auth::user()->can('ads.add'))
						<li> <a href="{{ route('add.banner') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới Banner</a>
						</li>
						 @endif
					</ul>
				</li>
@endif
@if(Auth::user()->can('coupon.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-invention"></i>
						</div>
						<div class="menu-title">Phiếu giảm giá</div>
					</a>
					<ul>
						@if(Auth::user()->can('coupon.list'))
						<li> <a href="{{ route('all.coupon') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách giảm giá</a>
						</li>
						@endif
						@if(Auth::user()->can('coupon.add'))
						<li> <a href="{{ route('add.coupon') }}"><i class="bx bx-right-arrow-alt"></i>Thêm mới giảm giá</a>
						</li>
						@endif
						 
					</ul>
				</li>
@endif
@if(Auth::user()->can('area.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-map"></i>
						</div>
						<div class="menu-title">Vận chuyển </div>
					</a>
					<ul>
						<li> <a href="{{ route('all.division') }}"><i class="bx bx-right-arrow-alt"></i>Tỉnh/Thành phố</a>
						</li>
						<li> <a href="{{ route('all.district') }}"><i class="bx bx-right-arrow-alt"></i>Quận/Huyện</a>
						</li>

						<li> <a href="{{ route('all.state') }}"><i class="bx bx-right-arrow-alt"></i>Phường/Xã</a>
						</li>
						 
					</ul>
				</li>
@endif

				<li class="menu-label">UI Elements</li>
			@if(Auth::user()->can('vendor.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class='lni lni-network'></i>
						</div>
						<div class="menu-title">Nhà cung cấp</div>
					</a>
					<ul>
						<li> <a href="{{ route('inactive.vendor') }}"><i class="bx bx-right-arrow-alt"></i>Nhà cung cấp không hoạt động</a>
						</li>
						<li> <a href="{{ route('active.vendor') }}"><i class="bx bx-right-arrow-alt"></i>Nhà cung cấp hoạt động</a>
						</li>
						 
					</ul>
				</li>
				@endif

@if(Auth::user()->can('order.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class='bx bx-cart'></i>
						</div>
						<div class="menu-title">Quản lý đơn hàng </div>
					</a>
					<ul>
						<li> <a href="{{ route('pending.order') }}"><i class="bx bx-right-arrow-alt"></i>Đơn hàng chờ xử lý</a>
						</li>
						<li> <a href="{{ route('admin.confirmed.order') }}"><i class="bx bx-right-arrow-alt"></i>Đơn hàng đã xác nhận</a>
						</li>
						<li> <a href="{{ route('admin.processing.order') }}"><i class="bx bx-right-arrow-alt"></i>Đơn hàng đang giao</a>
						</li>
						<li> <a href="{{ route('admin.delivered.order') }}"><i class="bx bx-right-arrow-alt"></i>Đơn hàng đã giao</a>
						</li>

					 
						 
					</ul>
				</li>
@endif

@if(Auth::user()->can('return.order.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class='lni lni-paperclip'></i>
						</div>
						<div class="menu-title">Đơn hàng trả về </div>
					</a>
					<ul>
						<li> <a href="{{ route('return.request') }}"><i class="bx bx-right-arrow-alt"></i>Return Request</a>
						</li>
						<li> <a href="{{ route('complete.return.request') }}"><i class="bx bx-right-arrow-alt"></i>Complete Request</a>
						</li> 
					</ul>
				</li>
@endif
@if(Auth::user()->can('report.menu'))
	<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-stats-up"></i>
						</div>
						<div class="menu-title">Báo cáo</div>
					</a>
					<ul>
						<li> <a href="{{ route('report.view') }}"><i class="bx bx-right-arrow-alt"></i>Xem báo cáo</a>
						</li>

							<li> <a href="{{ route('order.by.user') }}"><i class="bx bx-right-arrow-alt"></i>Theo người dùng</a>
						</li>
						 
						 
					</ul>
				</li>
@endif

@if(Auth::user()->can('user.management.menu'))
	<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-slideshare"></i>
						</div>
						<div class="menu-title">Người dùng</div>
					</a>
					<ul>
						<li> <a href="{{ route('all-user') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách User</a>
						</li>

							<li> <a href="{{ route('all-vendor') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Nhà cung cấp</a>
						</li>
						 
						 
					</ul>
				</li>
@endif

@if(Auth::user()->can('blog.menu'))
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="lni lni-pyramids"></i>
						</div>
						<div class="menu-title">Blog </div>
					</a>
					<ul>
						<li> <a href="{{ route('admin.blog.category') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Blog Danh mục</a>
						</li>

							<li> <a href="{{ route('admin.blog.post') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Blog Post</a>
						</li>
						 
						 
					</ul>
				</li>
@endif
@if(Auth::user()->can('review.menu'))
	<li>
		<a href="javascript:;" class="has-arrow">
			<div class="parent-icon"><i class="lni lni-indent-increase"></i>
			</div>
			<div class="menu-title">Đánh giá</div>
		</a>
		<ul>
			<li> <a href="{{ route('pending.review') }}"><i class="bx bx-right-arrow-alt"></i>Đánh giá đang chờ</a>
			</li>

				<li> <a href="{{ route('publish.review') }}"><i class="bx bx-right-arrow-alt"></i>Xuất bản đánh giá</a>
			</li>
			 
			 
		</ul>
	</li>
 @endif
		@if(Auth::user()->can('site.menu'))		 
				<li>
		<a href="javascript:;" class="has-arrow">
			<div class="parent-icon"><i class="lni lni-cog"></i>
			</div>
			<div class="menu-title">Cài đặt</div>
		</a>
		<ul>
			<li> <a href="{{ route('site.setting') }}"><i class="bx bx-right-arrow-alt"></i>Cài đặt trang web</a>
			</li>

				<li> <a href="{{ route('seo.setting') }}"><i class="bx bx-right-arrow-alt"></i>Cài đặt SEO</a>
			</li>
			 
			 
		</ul>
	</li>
			 
@endif
@if(Auth::user()->can('stock.menu'))
		<li>
		<a href="javascript:;" class="has-arrow">
			<div class="parent-icon"><i class="lni lni-cart-full"></i>
			</div>
			<div class="menu-title">Hàng tồn kho</div>
		</a>
		<ul>
			<li> <a href="{{ route('product.stock') }}"><i class="bx bx-right-arrow-alt"></i>Sản phẩm tồn kho</a>
			</li>

				 
			 
			 
		</ul>
	</li>
		@endif		 
			 
	 
@if(Auth::user()->can('role.permission.menu'))	   
				<li class="menu-label">Roles và Permission</li>
				<li>
					<a class="has-arrow" href="javascript:;">
						<div class="parent-icon"><i class="lni lni-users"></i>
						</div>
						<div class="menu-title">Role & Permission</div>
					</a>
					<ul>
						<li> <a href="{{ route('all.permission') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Permission</a>
						</li>
						<li> <a href="{{ route('all.roles') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Roles</a>
						</li>

						<li> <a href="{{ route('add.roles.permission') }}"><i class="bx bx-right-arrow-alt"></i>Roles Trong Permission</a>
						</li>

						<li> <a href="{{ route('all.roles.permission') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Roles trong Permission</a>
						</li>
					 
					</ul>
				</li>
	@endif				 
@if(Auth::user()->can('admin.user.menu'))	 
				 
				<li>
					<a class="has-arrow" href="javascript:;">
						<div class="parent-icon"><i class="lni lni-user"></i>
						</div>
						<div class="menu-title">Quản lý Admin </div>
					</a>
					<ul>
						<li> <a href="{{ route('all.admin') }}"><i class="bx bx-right-arrow-alt"></i>Danh sách Admin</a>
						</li>
						<li> <a href="{{ route('add.admin') }}"><i class="bx bx-right-arrow-alt"></i>Thêm Admin</a>
						</li>
 
					 
					</ul>
				</li>
			@endif	 	 
		 
			  
				<li>
					<a href=" " target="_blank">
						<div class="parent-icon"><i class="bx bx-support"></i>
						</div>
						<div class="menu-title">Support</div>
					</a>
				</li>
			</ul>
			<!--end navigation-->
		</div>