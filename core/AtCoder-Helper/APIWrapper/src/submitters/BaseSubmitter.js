"use strict";

class BaseSubmitter {
  constructor(client) {
    Object.defineProperty(this, "client", { value: client });
  }
}

module.exports = { BaseSubmitter };
