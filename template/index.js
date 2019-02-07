import Template from "./template";

import { use, registerComponent } from "@/utils/plugins";

const Plugin = {
  install(Vue) {
    registerComponent(Vue, Template);
  }
};

use(Plugin);

export default Plugin;

export { Template };
