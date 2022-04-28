<style>
    
    .resg{
        background-image: url("img/regis_background.jpg") !important;
        margin: auto;
    margin-top: 198px;
    min-height: 165px;
    width: 205px;
    background: #FFF;
    border-radius: 5px;
    box-shadow: 0 0 9px rgb(0 0 0 / 85%);
    padding: 40px 30px;
    }
    
</style>

    <x-guest-layout>
        <x-jet-authentication-card>
            <x-slot name="logo">
                
            </x-slot>
    
            <x-jet-validation-errors class="mb-4 " />
    <div class="resg"> 
        <form method="POST" action="{{ route('register') }}">
            @csrf
    
            <div>
                <x-jet-label for="name" style="margin: 3px;" value="{{ __('Name') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>
    
            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>
    
            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>
    
            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>
    
            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>
    
                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif
    
            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>
    
                <x-jet-button class=" btn btn-primary ml-4" style="background: rgb(16, 125, 228); color:#FFF; width: 168px; margin:4px; padding:6px; radius:15px;">
                    {{ __('Register') }}
                </x-jet-button>
            </div>
        </form>
    </div>
  
        </x-jet-authentication-card>
    </x-guest-layout>
    

