package core

type MockApiServiceError struct {
	IsMockApiServiceError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewMockApiServiceError(code string, msg string, ctx *Context) *MockApiServiceError {
	return &MockApiServiceError{
		IsMockApiServiceError: true,
		Sdk:              "MockApiService",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *MockApiServiceError) Error() string {
	return e.Msg
}
