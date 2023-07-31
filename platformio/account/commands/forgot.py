# Copyright (c) 2014-present PlatformIO <contact@platformio.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import click

from platformio.account.client import AccountClient


@click.command("forgot", short_help="Forgot password")
@click.option("--username", prompt="Username or email")
def account_forgot_cmd(username):
    with AccountClient() as client:
        client.forgot_password(username)
    click.secho(
        "If this account is registered, we will send the "
        "further instructions to your email.",
        fg="green",
    )
