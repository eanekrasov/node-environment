var assert = require('assert');

describe('simple test', function () {
  describe('#2+2', function () {
    it('should check that 2 + 2 = 4', function (done) {
      assert.equal(4, 2 + 2);
      done();
    });
  });
});
