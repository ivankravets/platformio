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


@click.command("remove", short_help="Remove an owner from organization")
@click.argument(
    "orgname",
)
@click.argument(
    "username",
)
def org_remove_cmd(orgname, username):
    with AccountClient() as client:
        client.remove_org_owner(orgname, username)
    return click.secho(
        "The `%s` owner has been successfully removed from the `%s` organization."
        % (username, orgname),
        fg="green",
    )
