<script lang="ts">
	import Dropdown from './Dropdown.svelte';
</script>

<div class="coding-style">
	<Dropdown title="Coding Style">
		<div class="python-style">
			<h2>Python Coding Style</h2>
			<div class="text-light">
				<h3>1. Naming Convention</h3>
				<p class="text-regular">
					변수, 함수, 클래스, 모듈 등의 이름은 다음과 같은 규칙을 따릅니다.
				</p>

				<pre><code>{`variable_name: str = 'user_name'`.trim()}</code></pre>
				<p>클래스 이름은 CamelCase, 함수와 변수 이름은 snake_case를 사용합니다.</p>
				<p>
					Python은 동적 타입 언어이지만, 디버깅 및 코드 가독성을 위해 가급적 타입 힌트를 사용합니다.
				</p>
				<div class="mini-line"></div>

				<pre><code>{`
class SampleClass:
    """
    This is a sample class
    """
    def __init__(self):
        pass
    
    def _print_user_name(self, user_name: str) -> None:
        """
        This function prints the user name

        :param str user_name: user name to be printed
        """
        print(user_name)

    @staticmethod
    def return_user_name(user_name: str) -> str:
        """
        This function returns the user name

        :param str user_name: user name that will be returned
        :return str: user name
        """
        SampleClass()._print_user_name(user_name)
        return user_name
`.trim()}</code></pre>
				
				<p>클래스와 함수의 docstring을 작성함으로써 코드 가독성을 높이고, 코드의 목적을 명확히 합니다.</p>
				<p>또한, 함수의 매개변수와 반환값에 대한 타입 힌트를 작성하여 코드의 안정성을 높입니다.</p>
				<p>
					docstring을 작성함으로써 IDE에서 함수나 클래스의 사용 방법, 파라미터, 리턴값 등을 쉽게 확인할 수 있어 개발 효율성을 높일 수 있습니다.
				</p>
				<div class="mini-line"></div>

				<pre><code>{`
import native_module_name
from native_module_name.submodule import sub_module_name

import third_party_module_name as tpmn

import local_module_name as lmn
`.trim()}</code></pre>

				<p>모듈을 import할 때는 다음과 같은 규칙을 따릅니다.</p>
				<ul>
					<li>표준 라이브러리 모듈(예: os, sys)은 최상단에 위치합니다.</li>
					<li>
						서드파티 라이브러리 모듈(예: numpy, pandas)은 표준 라이브러리 다음에 한 줄을 띄고 위치합니다.
					</li>
					<li>로컬 모듈(예: local_module_name)은 서드파티 라이브러리 모듈 다음에 위치합니다.</li>
					<li>PEP8의 import 순서 규칙에 따라, `import`를 먼저, 이후 `from`을 기입합니다.</li>
				</ul>
			</div>
		</div>
	</Dropdown>
</div>

<style>
	@import '../../style/fonts.css';
	@import './code-style.css';

	.coding-style {
		margin-top: 1rem;
	}

	.mini-line {
		margin-top: 1rem;
		border-bottom: 1px solid whitesmoke;
	}

	.python-style {
		padding: 1.5rem;
	}

	.python-style p {
		margin: 0;
	}

	pre {
		margin: 0.5rem 0;
		padding: 0.5rem;
		background-color: #2d2d2d;
		border-radius: 4px;
		overflow-x: auto;
	}

	code {
		display: block;
		color: #f8f8f2;
		font-family: 'Courier New', monospace;
		font-size: 0.95rem;
		white-space: pre-wrap; /* 공백과 줄바꿈 유지 */
	}
</style>