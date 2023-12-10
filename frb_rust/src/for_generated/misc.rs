use crate::DartFnFuture;
use std::future::Future;
use std::panic::UnwindSafe;

// ref: futures `boxed()`
pub fn convert_into_dart_fn_future<T: Future<Output = O> + Send + UnwindSafe + 'static, O>(
    raw: T,
) -> DartFnFuture<O> {
    Box::pin(raw)
}
