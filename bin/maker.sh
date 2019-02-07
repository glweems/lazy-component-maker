NAME=$1

VUE="
<template>
	<div class=\"$1\"></div>
</template>

<script>
export default {
	name: \"$1\",
	props: { title: { type: String, required: false } }
};
</script>

<style lang=\"scss\" scoped>
	@import \"@/scss/sudo-ui.scss\";
</style>
"

JS="
import $1 from \"./$1\";

import { use, registerComponent } from \"@/utils/plugins\";

const Plugin = {
  install(Vue) {
    registerComponent(Vue, $1);
  }
};

use(Plugin);

export default Plugin;

export { $1 };
"

mkdir $1

echo $VUE >> $1/$1.vue
echo $JS >> $1/index.js

echo "Vue Component $1 created."
