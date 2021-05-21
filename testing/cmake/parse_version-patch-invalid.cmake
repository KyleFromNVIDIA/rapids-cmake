#=============================================================================
# Copyright (c) 2018-2021, NVIDIA CORPORATION.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#=============================================================================
include(${rapids-cmake-dir}/cmake/parse_version.cmake)

rapids_cmake_parse_version(PATCH "" patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing should have failed")
endif()

rapids_cmake_parse_version(PATCH "not-a-version" patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing failed unexpectedly")
endif()

rapids_cmake_parse_version(PATCH "100" patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing failed unexpectedly")
endif()

rapids_cmake_parse_version(PATCH "21.03" patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing failed unexpectedly")
endif()

rapids_cmake_parse_version(PATCH "100.." patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing failed unexpectedly")
endif()
rapids_cmake_parse_version(PATCH "100..." patch_value)
if(DEFINED patch_value)
  message(FATAL_ERROR "rapids_cmake_parse_version(PATCH) value parsing failed unexpectedly")
endif()
