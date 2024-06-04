// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'web_audio_api/node.dart';

// These functions are ignored because they are not marked as `pub`: `as_slice`, `assert_is_finite`, `assert_not_zero`, `assert_sequence_length`, `assert_strictly_positive`, `assert_valid_buffer_length`, `assert_valid_channel_number`, `assert_valid_number_of_channels`, `assert_valid_sample_rate`, `assert_valid_time_value`, `audio_param_pair`, `cancel_and_hold_at_time_raw`, `cancel_scheduled_values_raw`, `channel_data_mut`, `channel_data`, `channels_mut`, `channels`, `compute_buffer`, `compute_exponential_ramp_automation`, `compute_exponential_ramp_sample`, `compute_intrinsic_values`, `compute_linear_ramp_automation`, `compute_linear_ramp_sample`, `compute_set_target_automation`, `compute_set_target_sample`, `compute_set_value_automation`, `compute_set_value_curve_automation`, `compute_set_value_curve_sample`, `exponential_ramp_to_value_at_time_raw`, `extend`, `from_channels`, `from_raw_parts`, `generate_wavetable`, `handle_event`, `handle_incoming_event`, `into_raw_parts`, `is_a_rate`, `is_empty`, `iter_mut`, `iter`, `linear_ramp_to_value_at_time_raw`, `mix_to_output`, `new`, `new`, `new`, `next`, `normalize`, `peek`, `pop`, `push`, `replace_peek`, `resample`, `retain`, `send_event`, `set_automation_rate_constrained`, `set_target_at_time_raw`, `set_value_at_time_raw`, `set_value_curve_at_time_raw`, `set_value_raw`, `sort`, `split_off`, `unsorted_peek`
// These functions are ignored because they have generic arguments: `connect_from_output_to_input`, `connect`, `new`, `set_onupdate`
// These types are ignored because they are not used by any `pub` functions: `AtomicF32`, `AtomicF64`, `AudioParamEventTimeline`, `AudioParamEventType`, `AudioParamEvent`, `AudioParamInner`, `AudioParamProcessor`, `AudioRenderCapacityLoad`, `BlockInfos`, `ChannelData`, `ErrorEvent`, `EventDispatch`, `EventHandler`, `EventLoop`, `EventPayload`, `EventType`, `MediaElement`, `MessagePort`
// These functions are ignored: `as_mut_slice`, `as_slice`, `audio_processing`, `clear_handler`, `complete`, `copy_from_channel_with_offset`, `copy_from_channel`, `copy_to_channel_with_offset`, `copy_to_channel`, `diagnostics`, `ended`, `from`, `handle_pending_events`, `is_empty`, `len`, `load`, `load`, `message`, `new`, `new`, `new`, `new`, `processor_error`, `render_capacity`, `run_in_thread`, `set_handler`, `set_onprocessorerror`, `sink_change`, `state_change`, `store`, `store`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioBuffer>>
@sealed
class AudioBuffer extends RustOpaque {
  // Not to be used by end users
  AudioBuffer.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioBuffer.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioBuffer,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioBuffer,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioBufferPtr,
  );

  /// Duration in seconds of the `AudioBuffer`
  Future<double> duration() =>
      RustLib.instance.api.webAudioApiAudioBufferDuration(
        that: this,
      );

  /// Convert raw samples to an AudioBuffer
  ///
  /// The outer Vec determine the channels. The inner Vecs should have the same length.
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given sample rate is zero
  /// - the given number of channels defined by `samples.len()`is outside the
  ///   [1, 32] range, 32 being defined by the MAX_CHANNELS constant.
  /// - any of its items have different lengths
  static Future<AudioBuffer> from(
          {required List<Float32List> samples, required double sampleRate}) =>
      RustLib.instance.api
          .webAudioApiAudioBufferFrom(samples: samples, sampleRate: sampleRate);

  /// Return a read-only copy of the underlying data of the channel
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given channel number is greater than or equal to the given number of channels.
  Future<void> getChannelData({required BigInt channelNumber}) =>
      RustLib.instance.api.webAudioApiAudioBufferGetChannelData(
          that: this, channelNumber: channelNumber);

  /// Return a mutable slice of the underlying data of the channel
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given channel number is greater than or equal to the given number of channels.
  Future<void> getChannelDataMut({required BigInt channelNumber}) =>
      RustLib.instance.api.webAudioApiAudioBufferGetChannelDataMut(
          that: this, channelNumber: channelNumber);

  /// Number of samples per channel in this `AudioBuffer`
  Future<BigInt> length() => RustLib.instance.api.webAudioApiAudioBufferLength(
        that: this,
      );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  /// Allocate a silent audiobuffer with [`AudioBufferOptions`]
  ///
  /// # Panics
  ///
  /// This function will panic if:
  /// - the given sample rate is zero
  /// - the given number of channels is outside the [1, 32] range,
  /// 32 being defined by the MAX_CHANNELS constant.
  static Future<AudioBuffer> newInstance(
          {required AudioBufferOptions options}) =>
      RustLib.instance.api.webAudioApiAudioBufferNew(options: options);

  /// Number of channels in this `AudioBuffer`
  Future<BigInt> numberOfChannels() =>
      RustLib.instance.api.webAudioApiAudioBufferNumberOfChannels(
        that: this,
      );

  /// Sample rate of this `AudioBuffer` in Hertz
  Future<double> sampleRate() =>
      RustLib.instance.api.webAudioApiAudioBufferSampleRate(
        that: this,
      );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioContextRegistration>>
@sealed
class AudioContextRegistration extends RustOpaque {
  // Not to be used by end users
  AudioContextRegistration.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioContextRegistration.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioContextRegistration,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioContextRegistration,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioContextRegistrationPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioListener>>
@sealed
class AudioListener extends RustOpaque {
  // Not to be used by end users
  AudioListener.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioListener.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioListener,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioListener,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioListenerPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioParam>>
@sealed
class AudioParam extends RustOpaque {
  // Not to be used by end users
  AudioParam.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioParam.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioParam,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioParam,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioParamPtr,
  );

  /// Current value of the automation rate of the AudioParam
  Future<AutomationRate> automationRate() =>
      RustLib.instance.api.webAudioApiAudioParamAutomationRate(
        that: this,
      );

  /// Cancels all scheduled parameter changes with times greater than or equal
  /// to `cancel_time` and the automation value that would have happened at
  /// that time is then propagated for all future time.
  ///
  /// # Panics
  ///
  /// Will panic if `cancel_time` is negative
  Future<void> cancelAndHoldAtTime({required double cancelTime}) =>
      RustLib.instance.api.webAudioApiAudioParamCancelAndHoldAtTime(
          that: this, cancelTime: cancelTime);

  /// Cancels all scheduled parameter changes with times greater than or equal
  /// to `cancel_time`.
  ///
  /// # Panics
  ///
  /// Will panic if `cancel_time` is negative
  Future<void> cancelScheduledValues({required double cancelTime}) =>
      RustLib.instance.api.webAudioApiAudioParamCancelScheduledValues(
          that: this, cancelTime: cancelTime);

  Future<void> channelConfig() =>
      RustLib.instance.api.webAudioApiAudioParamChannelConfig(
        that: this,
      );

  /// Represents an integer used to determine how many channels are used when up-mixing and
  /// down-mixing connections to any inputs to the node.
  Future<BigInt> channelCount() =>
      RustLib.instance.api.webAudioApiAudioParamChannelCount(
        that: this,
      );

  /// Represents an enumerated value describing the way channels must be matched between the
  /// node's inputs and outputs.
  Future<ChannelCountMode> channelCountMode() =>
      RustLib.instance.api.webAudioApiAudioParamChannelCountMode(
        that: this,
      );

  /// Represents an enumerated value describing the meaning of the channels. This interpretation
  /// will define how audio up-mixing and down-mixing will happen.
  Future<ChannelInterpretation> channelInterpretation() =>
      RustLib.instance.api.webAudioApiAudioParamChannelInterpretation(
        that: this,
      );

  /// Unset the callback to run when an unhandled exception occurs in the audio processor.
  Future<void> clearOnprocessorerror() =>
      RustLib.instance.api.webAudioApiAudioParamClearOnprocessorerror(
        that: this,
      );

  /// The [`BaseAudioContext`](crate::context::BaseAudioContext) concrete type which owns this
  /// AudioNode.
  Future<void> context() => RustLib.instance.api.webAudioApiAudioParamContext(
        that: this,
      );

  Future<double> defaultValue() =>
      RustLib.instance.api.webAudioApiAudioParamDefaultValue(
        that: this,
      );

  /// Disconnects all outgoing connections from the AudioNode.
  Future<void> disconnect() =>
      RustLib.instance.api.webAudioApiAudioParamDisconnect(
        that: this,
      );

  /// Disconnects all outputs of the AudioNode that go to a specific destination AudioNode.
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - the AudioContext of the source and destination does not match
  /// - the source node was not connected to the destination node
  Future<void> disconnectDest({required AudioNode dest}) => RustLib.instance.api
      .webAudioApiAudioParamDisconnectDest(that: this, dest: dest);

  /// Disconnects a specific output of the AudioNode to a specific destination AudioNode
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - the AudioContext of the source and destination does not match
  /// - if the output port is out of bounds for the source node
  /// - the source node was not connected to the destination node
  Future<void> disconnectDestFromOutput(
          {required AudioNode dest, required BigInt output}) =>
      RustLib.instance.api.webAudioApiAudioParamDisconnectDestFromOutput(
          that: this, dest: dest, output: output);

  /// Disconnects a specific output of the AudioNode to a specific input of some destination
  /// AudioNode
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - the AudioContext of the source and destination does not match
  /// - if the input port is out of bounds for the destination node
  /// - if the output port is out of bounds for the source node
  /// - the source node was not connected to the destination node
  Future<void> disconnectDestFromOutputToInput(
          {required AudioNode dest,
          required BigInt output,
          required BigInt input}) =>
      RustLib.instance.api.webAudioApiAudioParamDisconnectDestFromOutputToInput(
          that: this, dest: dest, output: output, input: input);

  /// Disconnects all outgoing connections at the given output port from the AudioNode.
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - if the output port is out of bounds for this node
  Future<void> disconnectOutput({required BigInt output}) =>
      RustLib.instance.api
          .webAudioApiAudioParamDisconnectOutput(that: this, output: output);

  /// Schedules an exponential continuous change in parameter value from the
  /// previous scheduled parameter value to the given value.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `value` is zero
  /// - `end_time` is negative
  Future<void> exponentialRampToValueAtTime(
          {required double value, required double endTime}) =>
      RustLib.instance.api.webAudioApiAudioParamExponentialRampToValueAtTime(
          that: this, value: value, endTime: endTime);

  /// Schedules a linear continuous change in parameter value from the
  /// previous scheduled parameter value to the given value.
  ///
  /// # Panics
  ///
  /// Will panic if `end_time` is negative
  Future<void> linearRampToValueAtTime(
          {required double value, required double endTime}) =>
      RustLib.instance.api.webAudioApiAudioParamLinearRampToValueAtTime(
          that: this, value: value, endTime: endTime);

  Future<double> maxValue() =>
      RustLib.instance.api.webAudioApiAudioParamMaxValue(
        that: this,
      );

  Future<double> minValue() =>
      RustLib.instance.api.webAudioApiAudioParamMinValue(
        that: this,
      );

  Future<BigInt> numberOfInputs() =>
      RustLib.instance.api.webAudioApiAudioParamNumberOfInputs(
        that: this,
      );

  Future<BigInt> numberOfOutputs() =>
      RustLib.instance.api.webAudioApiAudioParamNumberOfOutputs(
        that: this,
      );

  Future<void> registration() =>
      RustLib.instance.api.webAudioApiAudioParamRegistration(
        that: this,
      );

  /// Update the current value of the automation rate of the AudioParam
  ///
  /// # Panics
  ///
  /// Some nodes have automation rate constraints and may panic when updating the value.
  Future<void> setAutomationRate({required AutomationRate value}) =>
      RustLib.instance.api
          .webAudioApiAudioParamSetAutomationRate(that: this, value: value);

  Future<void> setChannelCount({required BigInt v}) => RustLib.instance.api
      .webAudioApiAudioParamSetChannelCount(that: this, v: v);

  Future<void> setChannelCountMode({required ChannelCountMode v}) =>
      RustLib.instance.api
          .webAudioApiAudioParamSetChannelCountMode(that: this, v: v);

  Future<void> setChannelInterpretation({required ChannelInterpretation v}) =>
      RustLib.instance.api
          .webAudioApiAudioParamSetChannelInterpretation(that: this, v: v);

  /// Start exponentially approaching the target value at the given time with
  /// a rate having the given time constant.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `start_time` is negative
  /// - `time_constant` is negative
  Future<void> setTargetAtTime(
          {required double value,
          required double startTime,
          required double timeConstant}) =>
      RustLib.instance.api.webAudioApiAudioParamSetTargetAtTime(
          that: this,
          value: value,
          startTime: startTime,
          timeConstant: timeConstant);

  /// Set the value of the `AudioParam`.
  ///
  /// Is equivalent to calling the `set_value_at_time` method with the current
  /// AudioContext's currentTime
  Future<void> setValue({required double value}) => RustLib.instance.api
      .webAudioApiAudioParamSetValue(that: this, value: value);

  /// Schedules a parameter value change at the given time.
  ///
  /// # Panics
  ///
  /// Will panic if `start_time` is negative
  Future<void> setValueAtTime(
          {required double value, required double startTime}) =>
      RustLib.instance.api.webAudioApiAudioParamSetValueAtTime(
          that: this, value: value, startTime: startTime);

  /// Sets an array of arbitrary parameter values starting at the given time
  /// for the given duration.
  ///
  /// # Panics
  ///
  /// Will panic if:
  /// - `value` length is less than 2
  /// - `start_time` is negative
  /// - `duration` is negative or equal to zero
  Future<void> setValueCurveAtTime(
          {required List<double> values,
          required double startTime,
          required double duration}) =>
      RustLib.instance.api.webAudioApiAudioParamSetValueCurveAtTime(
          that: this, values: values, startTime: startTime, duration: duration);

  /// Retrieve the current value of the `AudioParam`.
  Future<double> value() => RustLib.instance.api.webAudioApiAudioParamValue(
        that: this,
      );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioProcessingEvent>>
@sealed
class AudioProcessingEvent extends RustOpaque {
  // Not to be used by end users
  AudioProcessingEvent.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioProcessingEvent.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioProcessingEvent,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioProcessingEvent,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioProcessingEventPtr,
  );

  AudioBuffer get inputBuffer =>
      RustLib.instance.api.webAudioApiAudioProcessingEventGetInputBuffer(
        that: this,
      );

  AudioBuffer get outputBuffer =>
      RustLib.instance.api.webAudioApiAudioProcessingEventGetOutputBuffer(
        that: this,
      );

  double get playbackTime =>
      RustLib.instance.api.webAudioApiAudioProcessingEventGetPlaybackTime(
        that: this,
      );

  void set inputBuffer(AudioBuffer inputBuffer) =>
      RustLib.instance.api.webAudioApiAudioProcessingEventSetInputBuffer(
          that: this, inputBuffer: inputBuffer);

  void set outputBuffer(AudioBuffer outputBuffer) =>
      RustLib.instance.api.webAudioApiAudioProcessingEventSetOutputBuffer(
          that: this, outputBuffer: outputBuffer);

  void set playbackTime(double playbackTime) =>
      RustLib.instance.api.webAudioApiAudioProcessingEventSetPlaybackTime(
          that: this, playbackTime: playbackTime);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioRenderCapacity>>
@sealed
class AudioRenderCapacity extends RustOpaque {
  // Not to be used by end users
  AudioRenderCapacity.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioRenderCapacity.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioRenderCapacity,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioRenderCapacity,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioRenderCapacityPtr,
  );

  /// Unset the EventHandler for [`AudioRenderCapacityEvent`].
  Future<void> clearOnupdate() =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityClearOnupdate(
        that: this,
      );

  /// Start metric collection and analysis
  Future<void> start({required AudioRenderCapacityOptions options}) =>
      RustLib.instance.api
          .webAudioApiAudioRenderCapacityStart(that: this, options: options);

  /// Stop metric collection and analysis
  Future<void> stop() =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityStop(
        that: this,
      );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioRenderCapacityEvent>>
@sealed
class AudioRenderCapacityEvent extends RustOpaque {
  // Not to be used by end users
  AudioRenderCapacityEvent.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioRenderCapacityEvent.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_AudioRenderCapacityEvent,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_AudioRenderCapacityEvent,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_AudioRenderCapacityEventPtr,
  );

  double get averageLoad =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventGetAverageLoad(
        that: this,
      );

  Event get event =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventGetEvent(
        that: this,
      );

  double get peakLoad =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventGetPeakLoad(
        that: this,
      );

  double get timestamp =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventGetTimestamp(
        that: this,
      );

  double get underrunRatio =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventGetUnderrunRatio(
        that: this,
      );

  void set averageLoad(double averageLoad) =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventSetAverageLoad(
          that: this, averageLoad: averageLoad);

  void set event(Event event) => RustLib.instance.api
      .webAudioApiAudioRenderCapacityEventSetEvent(that: this, event: event);

  void set peakLoad(double peakLoad) =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventSetPeakLoad(
          that: this, peakLoad: peakLoad);

  void set timestamp(double timestamp) =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventSetTimestamp(
          that: this, timestamp: timestamp);

  void set underrunRatio(double underrunRatio) =>
      RustLib.instance.api.webAudioApiAudioRenderCapacityEventSetUnderrunRatio(
          that: this, underrunRatio: underrunRatio);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Event>>
@sealed
class Event extends RustOpaque {
  // Not to be used by end users
  Event.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  Event.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Event,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Event,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_EventPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<OfflineAudioCompletionEvent>>
@sealed
class OfflineAudioCompletionEvent extends RustOpaque {
  // Not to be used by end users
  OfflineAudioCompletionEvent.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  OfflineAudioCompletionEvent.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_OfflineAudioCompletionEvent,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_OfflineAudioCompletionEvent,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_OfflineAudioCompletionEventPtr,
  );

  Event get event =>
      RustLib.instance.api.webAudioApiOfflineAudioCompletionEventGetEvent(
        that: this,
      );

  AudioBuffer get renderedBuffer => RustLib.instance.api
          .webAudioApiOfflineAudioCompletionEventGetRenderedBuffer(
        that: this,
      );

  void set event(Event event) => RustLib.instance.api
      .webAudioApiOfflineAudioCompletionEventSetEvent(that: this, event: event);

  void set renderedBuffer(AudioBuffer renderedBuffer) => RustLib.instance.api
      .webAudioApiOfflineAudioCompletionEventSetRenderedBuffer(
          that: this, renderedBuffer: renderedBuffer);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<PeriodicWave>>
@sealed
class PeriodicWave extends RustOpaque {
  // Not to be used by end users
  PeriodicWave.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  PeriodicWave.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_PeriodicWave,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_PeriodicWave,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_PeriodicWavePtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<dyn AudioNode>>
@sealed
class AudioNode extends RustOpaque {
  // Not to be used by end users
  AudioNode.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  AudioNode.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_AudioNode,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioNode,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_AudioNodePtr,
  );
}

/// Options for constructing an [`AudioBuffer`]
class AudioBufferOptions {
  /// The number of channels for the buffer
  final BigInt numberOfChannels;

  /// The length in sample frames of the buffer
  final BigInt length;

  /// The sample rate in Hz for the buffer
  final double sampleRate;

  const AudioBufferOptions({
    required this.numberOfChannels,
    required this.length,
    required this.sampleRate,
  });

  @override
  int get hashCode =>
      numberOfChannels.hashCode ^ length.hashCode ^ sampleRate.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioBufferOptions &&
          runtimeType == other.runtimeType &&
          numberOfChannels == other.numberOfChannels &&
          length == other.length &&
          sampleRate == other.sampleRate;
}

/// Options for constructing an [`AudioParam`]
class AudioParamDescriptor {
  final String name;
  final AutomationRate automationRate;
  final double defaultValue;
  final double minValue;
  final double maxValue;

  const AudioParamDescriptor({
    required this.name,
    required this.automationRate,
    required this.defaultValue,
    required this.minValue,
    required this.maxValue,
  });

  @override
  int get hashCode =>
      name.hashCode ^
      automationRate.hashCode ^
      defaultValue.hashCode ^
      minValue.hashCode ^
      maxValue.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioParamDescriptor &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          automationRate == other.automationRate &&
          defaultValue == other.defaultValue &&
          minValue == other.minValue &&
          maxValue == other.maxValue;
}

/// Options for constructing an `AudioRenderCapacity`
class AudioRenderCapacityOptions {
  /// An update interval (in seconds) for dispatching [`AudioRenderCapacityEvent`]s
  final double updateInterval;

  const AudioRenderCapacityOptions({
    required this.updateInterval,
  });

  @override
  int get hashCode => updateInterval.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioRenderCapacityOptions &&
          runtimeType == other.runtimeType &&
          updateInterval == other.updateInterval;
}

/// Precision of AudioParam value calculation per render quantum
enum AutomationRate {
  /// Audio Rate - sampled for each sample-frame of the block
  a,

  /// Control Rate - sampled at the time of the very first sample-frame,
  /// then used for the entire block
  k,
  ;
}

/// Options for constructing a [`PeriodicWave`]
class PeriodicWaveOptions {
  /// The real parameter represents an array of cosine terms of Fourier series.
  ///
  /// The first element (index 0) represents the DC-offset.
  /// This offset has to be given but will not be taken into account
  /// to build the custom periodic waveform.
  ///
  /// The following elements (index 1 and more) represent the fundamental and
  /// harmonics of the periodic waveform.
  final Float32List? real;

  /// The imag parameter represents an array of sine terms of Fourier series.
  ///
  /// The first element (index 0) will not be taken into account
  /// to build the custom periodic waveform.
  ///
  /// The following elements (index 1 and more) represent the fundamental and
  /// harmonics of the periodic waveform.
  final Float32List? imag;

  /// By default PeriodicWave is build with normalization enabled (disable_normalization = false).
  /// In this case, a peak normalization is applied to the given custom periodic waveform.
  ///
  /// If disable_normalization is enabled (disable_normalization = true), the normalization is
  /// defined by the periodic waveform characteristics (img, and real fields).
  final bool disableNormalization;

  const PeriodicWaveOptions({
    this.real,
    this.imag,
    required this.disableNormalization,
  });

  @override
  int get hashCode =>
      real.hashCode ^ imag.hashCode ^ disableNormalization.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodicWaveOptions &&
          runtimeType == other.runtimeType &&
          real == other.real &&
          imag == other.imag &&
          disableNormalization == other.disableNormalization;
}
