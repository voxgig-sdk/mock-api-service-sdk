
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { MockApiServiceSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await MockApiServiceSDK.test()
    equal(null !== testsdk, true)
  })

})
