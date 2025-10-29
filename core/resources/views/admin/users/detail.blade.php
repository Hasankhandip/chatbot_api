@extends('admin.layouts.app')
@section('panel')
    <div class="row responsive-row">
        <div class="col-xxl-6">
            <div class="card h-100 ">
                <div class="card-body">
                    <div class="user-detail">
                        <div class="user-detail__user">
                            <div class="user-detail__thumb">
                                <img class="fit-image" src="{{ $user->image_src }}" alt="user">
                            </div>
                            <div class="user-detail__user-info">
                                <h5 class="user-detail__name mb-1">{{ __($user->fullname) }}</h5>
                                <p class="user-detail__username">{{ '@' . $user->username }}</p>
                            </div>
                            <div class="login-user">
                                <a target="_blank" href="{{ route('admin.users.login', $user->id) }}"
                                    class="btn btn--primary">
                                    <i class="fas fa-sign-in-alt me-1"></i>
                                    <span>@lang('Login as User')</span>
                                </a>
                            </div>
                        </div>
                        <div class="row gy-4 align-items-center">
                            <div class="col-md-6">
                                <ul class="user-detail__contact">
                                    <li class="item">
                                        <span>@lang('Email'): </span>
                                        <span>{{ $user->email }}</span>
                                    </li>
                                    <li class="item">
                                        <span>@lang('Mobile number'): </span>
                                        <span>{{ $user->mobileNumber }}</span>
                                    </li>
                                    <li class="item">
                                        <span>@lang('Country'): </span>
                                        <span>{{ __($user->country_name) }}</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul class="user-detail__verification">
                                    <li class="item">
                                        <span>@lang('Email Verification')</span>
                                        <span>
                                            @if ($user->ev)
                                                <i class="fas fa-check-circle text--success"></i>
                                            @else
                                                <i class="fas fa-times-circle text--danger"></i>
                                            @endif
                                        </span>
                                    </li>
                                    <li class="item">
                                        <span>@lang('Mobile Verification')</span>
                                        <span>
                                            @if ($user->sv)
                                                <i class="fas fa-check-circle text--success"></i>
                                            @else
                                                <i class="fas fa-times-circle text--danger"></i>
                                            @endif
                                        </span>
                                    </li>
                                    <li class="item">
                                        <span>@lang('KYC Verification')</span>
                                        @if ($user->kv)
                                            <i class="fas fa-check-circle text--success"></i>
                                        @else
                                            <i class="fas fa-times-circle text--danger"></i>
                                        @endif
                                    </li>
                                    <li class="item">
                                        <span>@lang('2FA Verification')</span>
                                        <span>
                                            @if ($user->ts)
                                                <i class="fas fa-check-circle text--success"></i>
                                            @else
                                                <i class="fas fa-times-circle text--danger"></i>
                                            @endif
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-6">
            <div class="card shadow-none ">
                <div class="card-header border-0">
                    <h5 class="card-title">@lang('Financial Overview')</h5>
                </div>
                <div class="card-body">
                    <div class="widget-card-wrapper custom-widget-wrapper">
                        <div class="row g-0">
                            <div class="col-sm-6">
                                <div class="widget-card widget--success">
                                    <a href="{{ route('admin.report.transaction') }}?user_id={{ $user->id }}"
                                        class="widget-card-link"></a>
                                    <div class="widget-card-left">
                                        <div class="widget-icon">
                                            <i class="fas fa-credit-card"></i>
                                        </div>
                                        <div class="widget-card-content">
                                            <p class="widget-title">@lang('Balance')</p>
                                            <h6 class="widget-amount">
                                                {{ gs('cur_sym') }}{{ showAmount($user->balance, currencyFormat: false) }}
                                                <span class="currency">
                                                    {{ __(gs('cur_text')) }}
                                                </span>
                                            </h6>
                                        </div>
                                    </div>
                                    <span class="widget-card-arrow">
                                        <i class="fas fa-chevron-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="widget-card widget--success">
                                    <a href="{{ route('admin.deposit.list') }}?user_id={{ $user->id }}"
                                        class="widget-card-link"></a>
                                    <div class="widget-card-left">
                                        <div class="widget-icon">
                                            <i class="fas fa-arrow-alt-circle-down"></i>
                                        </div>
                                        <div class="widget-card-content">
                                            <p class="widget-title">@lang('Total Deposits')</p>
                                            <h6 class="widget-amount">
                                                {{ gs('cur_sym') }}{{ showAmount($widget['total_deposit'], currencyFormat: false) }}
                                                <span class="currency">
                                                    {{ __(gs('cur_text')) }}
                                                </span>
                                            </h6>
                                        </div>
                                    </div>
                                    <span class="widget-card-arrow">
                                        <i class="fas fa-chevron-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="widget-card widget--warning">
                                    <a href="{{ route('admin.withdraw.data.all') }}?user_id={{ $user->id }}"
                                        class="widget-card-link"></a>
                                    <div class="widget-card-left">
                                        <div class="widget-icon">
                                            <i class="fas fas fa-arrow-alt-circle-up"></i>
                                        </div>
                                        <div class="widget-content">
                                            <p class="widget-title">@lang('Total Withdrawals')</p>
                                            <h6 class="widget-amount">
                                                {{ gs('cur_sym') }}{{ showAmount($widget['total_withdraw'], currencyFormat: false) }}
                                                <span class="currency">
                                                    {{ __(gs('cur_text')) }}
                                                </span>
                                            </h6>
                                        </div>
                                    </div>
                                    <span class="widget-card-arrow">
                                        <i class="fas fa-chevron-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="widget-card widget--primary">
                                    <a href="{{ route('admin.report.transaction') }}?user_id={{ $user->id }}"
                                        class="widget-card-link"></a>
                                    <div class="widget-card-left">
                                        <div class="widget-icon">
                                            <i class="fas fa-sync"></i>
                                        </div>
                                        <div class="widget-card-content">
                                            <p class="widget-title">@lang('Total Transactions')</p>
                                            <h6 class="widget-amount">
                                                {{ gs('cur_sym') }}{{ showAmount($widget['total_transaction'], currencyFormat: false) }}
                                                <span class="currency">
                                                    {{ __(gs('cur_text')) }}
                                                </span>
                                            </h6>
                                        </div>
                                    </div>
                                    <span class="widget-card-arrow">
                                        <i class="fas fa-chevron-right"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row responsive-row">
        <div class="col-xxl-8">
            <form action="{{ route('admin.users.update', [$user->id]) }}" method="POST" enctype="multipart/form-data"
                class="user-form">
                @csrf
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center gap-3">
                        <h5 class="card-title mb-0">@lang('Full Information')</h5>
                        <div class=" d-none d-md-block">
                            <button type="submit" class="btn btn--primary fw-500 disabled" disabled>
                                <i class="fa-regular fa-paper-plane me-1"></i><span>@lang('Update')</span>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>@lang('First Name')</label>
                                        <input class="form-control" type="text" name="firstname" required
                                            value="{{ $user->firstname }}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label class="form-control-label">@lang('Last Name')</label>
                                    <input class="form-control" type="text" name="lastname" required
                                        value="{{ $user->lastname }}">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>@lang('Email')</label>
                                    <input class="form-control" type="email" name="email"
                                        value="{{ $user->email }}" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>@lang('Mobile Number')</label>
                                    <div class="input-group input--group ">
                                        <span class="input-group-text mobile-code">+{{ $user->dial_code }}</span>
                                        <input type="number" name="mobile" value="{{ $user->mobile }}" id="mobile"
                                            class="form-control checkUser" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>@lang('Address')</label>
                                <input class="form-control" type="text" name="address"
                                    value="{{ @$user->address }}">
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="form-group">
                                    <label>@lang('City')</label>
                                    <input class="form-control" type="text" name="city"
                                        value="{{ @$user->city }}">
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="form-group">
                                    <label>@lang('State')</label>
                                    <input class="form-control" type="text" name="state"
                                        value="{{ @$user->state }}">
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="form-group">
                                    <label>@lang('Zip/Postal')</label>
                                    <input class="form-control" type="text" name="zip"
                                        value="{{ @$user->zip }}">
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="form-group">
                                    <label>@lang('Country') <span class="text--danger">*</span></label>
                                    <select name="country" class="form-control select2">
                                        @foreach ($countries as $key => $country)
                                            <option data-mobile_code="{{ $country->dial_code }}"
                                                value="{{ $key }}" @selected($user->country_code == $key)>
                                                {{ __($country->country) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="verification-switch">
                            <div class="verification-switch__item d-flex justify-content-between align-items-center gap-2">
                                <label class="form-check-label fw-500" for="email_verification">@lang('Email Verification')</label>
                                <div class="form-check form-switch form-switch-success form--switch pl-0">
                                    <input class="form-check-input" type="checkbox" role="switch"
                                        id="email_verification" name="ev" @checked($user->ev)>
                                </div>
                            </div>
                            <div class="verification-switch__item d-flex justify-content-between align-items-center gap-2">
                                <label class="form-check-label fw-500" for="mobile_berification">
                                    @lang('Mobile Verification')
                                </label>
                                <div class="form-check form-switch form-switch-success form--switch pl-0">
                                    <input class="form-check-input" type="checkbox" role="switch"
                                        id="mobile_berification" name="sv" @checked($user->sv)>
                                </div>
                            </div>

                            <div class="verification-switch__item d-flex justify-content-between align-items-center gap-2">
                                <label class="form-check-label fw-500" for="kyc_verification">@lang('KYC Verification')</label>
                                <div class="form-check form-switch form-switch-success form--switch pl-0">
                                    <input class="form-check-input" type="checkbox" role="switch" id="kyc_verification"
                                        name="kv" @checked($user->kv)>
                                </div>
                            </div>
                            <div class="verification-switch__item d-flex justify-content-between align-items-center gap-2">
                                <label class="form-check-label fw-500" for="2fa_verification">@lang('2FA Verification')</label>
                                <div class="form-check form-switch form-switch-success form--switch pl-0">
                                    <input class="form-check-input" type="checkbox" role="switch" id="2fa_verification"
                                        name="ts" @checked($user->ts)>
                                </div>
                            </div>
                        </div>
                        <div class="d-block d-md-none mt-3">
                            <x-admin.ui.btn.submit disabled="disabled" class="disabled" text="Update" />
                        </div>
                    </div>
                </div>

            </form>
        </div>
        <div class="col-xxl-4">
            <div class="card h-100">
                <div class="card-header d-flex justify-content-between align-items-center gap-3">
                    <h5 class="card-title mb-0">@lang('Login History')</h5>
                    <a href="{{ route('admin.report.login.history') }}?user_id={{ $user->id }}"
                        class="btn btn--primary fw-500 @if (!$loginLogs->count()) disabled @endif">
                        <span>@lang('View All')</span>
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
                <div class="card-body">
                    <div class="login-history h-100">
                        @forelse ($loginLogs as $loginLog)
                            <div class="login-history__item d-flex justify-content-between align-items-center">
                                <div class="login-history__item-content d-flex align-items-center gap-2">
                                    <div class="login-history__item__icon">
                                        @if (in_array(strtolower($loginLog->os), os()))
                                            <i class="fab fa-{{ strtolower($loginLog->os) }}"></i>
                                        @else
                                            <i class="fa fa-desktop"></i>
                                        @endif
                                    </div>
                                    <div class="login-history__info">
                                        <p class="login-history__item-title">{{ __($loginLog->os) }}</p>
                                        <p class="login-history__item-desc text--secondary">
                                            {{ __($loginLog->browser) }}
                                        </p>
                                    </div>
                                </div>
                                <div class="login-history__item-time">
                                    <p>{{ __($loginLog->user_ip) }}</p>
                                </div>
                            </div>
                        @empty
                            <div class="p-5 d-flex justify-content-center align-items-center flex-column h-100">
                                <img src="{{ asset('assets/images/empty_box.png') }}" class="empty-message">
                                <span class="d-block fs-14 text-muted">{{ __($emptyMessage) }}</span>
                            </div>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
    <x-admin.ui.modal id="userStatusModal">
        <x-admin.ui.modal.header>
            <div>
                <h4 class="modal-title">
                    @if ($user->status == Status::USER_ACTIVE)
                        @lang('Ban User')
                    @else
                        @lang('Unban User')
                    @endif
                </h4>
                @if ($user->status == Status::USER_ACTIVE)
                    <small>@lang('If this user is banned, they will no longer have access to their dashboard.')</small>
                @else
                    <small>
                        <span class=" text--info">@lang('Ban reason was'):</span>
                        <span>{{ __($user->ban_reason) }}</span>
                    </small>
                @endif
            </div>
            <button type="button" class="btn-close close" data-bs-dismiss="modal" aria-label="Close">
                <i class="las la-times"></i>
            </button>
        </x-admin.ui.modal.header>
        <x-admin.ui.modal.body>
            <form action="{{ route('admin.users.status', $user->id) }}" method="POST">
                @csrf
                @if ($user->status == Status::USER_ACTIVE)
                    <div class="form-group">
                        <label>@lang('Reason')</label>
                        <textarea class="form-control" name="reason" rows="4" required></textarea>
                    </div>
                @else
                    <h4 class="mt-3 text-center text--warning">@lang('Are you sure to unban this user?')</h4>
                @endif
                <div class="form-group">
                    @if ($user->status == Status::USER_ACTIVE)
                        <x-admin.ui.btn.modal />
                    @else
                        <div class="d-flex flex-wrap gap-2 justify-content-end">
                            <button type="button" class="btn btn--secondary btn-large" data-bs-dismiss="modal">
                                <i class="las la-times"></i> @lang('No')
                            </button>
                            <button type="submit" class="btn btn--primary btn-large">
                                <i class=" las la-check-circle"></i> @lang('Yes')
                            </button>
                        </div>
                    @endif
                </div>
            </form>
        </x-admin.ui.modal.body>
    </x-admin.ui.modal>

    <x-admin.ui.modal id="addSubModal">
        <x-admin.ui.modal.header>
            <div>
                <h4 class="modal-title">@lang('Add Balance')</h4>
                <small class="modal-subtitle">@lang('Add funds to user accounts by entering the desired amount below')</small>
            </div>
            <button type="button" class="btn-close close" data-bs-dismiss="modal" aria-label="Close">
                <i class="las la-times"></i>
            </button>
        </x-admin.ui.modal.header>
        <x-admin.ui.modal.body>
            <form method="POST" action="{{ route('admin.users.add.sub.balance', $user->id) }}">
                @csrf
                <input type="hidden" name="act">
                <div class="form-group">
                    <label class="form-label">@lang('Amount')</label>
                    <div class="input-group input--group">
                        <input type="number" step="any" min="0" name="amount" class="form-control"
                            placeholder="@lang('Enter amount')" required>
                        <div class="input-group-text">{{ __(gs('cur_text')) }}</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">@lang('Remark')</label>
                    <textarea class="form-control" placeholder="@lang('Enter remark')" name="remark" rows="4" required></textarea>
                </div>
                <div class="form-group">
                    <x-admin.ui.btn.modal />
                </div>
            </form>
        </x-admin.ui.modal.body>
    </x-admin.ui.modal>
@endsection



@push('breadcrumb-plugins')
    <div class=" d-flex gap-2  flex-wrap">
        <button type="button" class=" flex-fill btn  btn--success balance-adjust" data-act="add">
            <i class="las la-plus me-1"></i>@lang('Balance')
        </button>
        <button type="button" class="flex-fill btn  btn--danger balance-adjust" data-act="sub">
            <i class="las la-minus-circle me-1"></i>@lang('Balance')
        </button>
        @if ($user->status == Status::USER_ACTIVE)
            <button type="button" class="flex-fill btn  btn--warning" data-bs-toggle="modal"
                data-bs-target="#userStatusModal">
                <i class="las la-ban me-1"></i>@lang('Ban User')
            </button>
        @else
            <button type="button" class="flex-fill btn  btn--info" data-bs-toggle="modal"
                data-bs-target="#userStatusModal">
                <i class="las la-ban me-1"></i>@lang('Unban User')
            </button>
        @endif
        <a href="{{ route('admin.report.notification.history') }}?user_id={{ $user->id }}"
            class="flex-fill btn  btn--secondary">
            <i class="las la-bell me-1"></i>@lang('Notifications')
        </a>
        @if ($user->kyc_data)
            <a href="{{ route('admin.users.kyc.details', $user->id) }}" target="_blank"
                class="flex-fill btn  btn--info">
                <i class="las la-user-check me-1"></i>@lang('KYC Data')
            </a>
        @endif
    </div>
@endpush

@push('script')
    <script>
        "use strict";
        (function($) {

            $(".balance-adjust").on('click', function(e) {
                const modal = $('#addSubModal');
                const act = $(this).data('act');
                const id = $(this).data('id');

                if (act == 'add') {
                    modal.find(".modal-title").text("@lang('Add Balance')");
                    modal.find(".modal-subtitle").text("@lang('Add funds to user accounts by entering the desired amount below')");
                } else {
                    modal.find(".modal-title").text("@lang('Subtract Balance')");
                    modal.find(".modal-subtitle").text("@lang('Subtract funds to user accounts by entering the desired amount below')");
                }
                modal.find('input[name=act]').val(act);
                modal.modal('show');
            });

            const inputValues = {};
            const $formElements = $('.user-form input, .user-form select').not("[name=_token]");
            const $submitButton = $(".user-form").find('button[type=submit]');

            $formElements.each(function(i, element) {
                const $element = $(element);
                const name = $element.attr('name');
                const type = $element.attr('type');
                var value = $element.val();

                if (type == 'checkbox') {
                    value = $element.is(":checked");
                }
                const inputValue = {
                    inittial_value: value,
                    new_value: value,
                }
                inputValues[name] = inputValue;
            });

            $(".user-form").on('input change', 'input,select', function(e) {
                const name = $(this).attr('name');
                const type = $(this).attr('type');
                var value = $(this).val();

                if (type == 'checkbox') {
                    value = $(this).is(":checked");
                }

                const oldInputValue = inputValues[name];
                const newInputValue = {
                    inittial_value: oldInputValue.inittial_value,
                    new_value: value,
                };
                inputValues[name] = newInputValue;

                btnEnableDisable();
            });

            // submit btn disable/enable depend on input values
            function btnEnableDisable() {
                var isDisabled = true;
                $.each(inputValues, function(i, element) {
                    if (element.inittial_value != element.new_value) {
                        isDisabled = false;
                        return;
                    }
                });
                if (isDisabled) {
                    $submitButton.addClass("disabled").attr('disabled', true);
                } else {
                    $submitButton.removeClass("disabled").attr('disabled', false);
                }
            }

            let mobileElement = $('.mobile-code');
            $('select[name=country]').on('change', function() {
                mobileElement.text(`+${$('select[name=country] :selected').data('mobile_code')}`);
            });
        })(jQuery);
    </script>
@endpush
