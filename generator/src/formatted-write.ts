import { execSync } from "child_process";
import * as fs from "fs-extra";

export const applyElmFormat = (fileOrFolderToFormat: string): void => {
  execSync(`./node_modules/elm-format/bin/elm-format --elm-version=0.19 --yes ${fileOrFolderToFormat}/`);
};
