/*
 *
 * (c) Copyright Ascensio System Limited 2010-2020
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/


var ConfirmActivacion = function () {
    var password = jq("#studio_confirm_pwd").val();

    var regex = /^(?=.*[a-z]{0,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[_\-.~@!$^*()#=|]).{10,30}$/g;
    var match = regex.test(password)
    console.log(match);
    if (match != true) {
        jq("#studio_confirm_pwd").css("border-color", "#DF1B1B");
        toastr.error(jq("#studio_confirm_pwd").data("help"));
        return;
    }
    window.hashPassword(password, function (passwordHash) {
        jq("#passwordHash").val(passwordHash);
        window.submitForm();
    });
};