
import { Context } from './Context'


class MockApiServiceError extends Error {

  isMockApiServiceError = true

  sdk = 'MockApiService'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  MockApiServiceError
}

