# Author:: Joshua Timberman <joshua@chef.io>
#
# Copyright (c) 2014, Chef Software, Inc. <legal@chef.io>
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
#
# This recipe is for testing the chef_vault_secret resource.

require 'cheffish'

chef_data_bag 'green'

chef_vault_secret 'clean-energy' do
  data_bag 'green'
  raw_data('auth' => 'Forged in a mold')
  admins 'hydroelectric'
  search '*:*'
end

chef_vault_secret 'dirty-energy' do
  environment '_default'
  data_bag 'green'
  raw_data('auth' => 'carbon-credits')
  admins 'hydroelectric'
end
