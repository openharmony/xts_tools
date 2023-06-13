import { Constants } from '../constants/Constants';
import events_emitter from '@ohos.events.emitter';

export class AttrsManager {
  callBack;

  static change(caseName, setValue) {
    let eventData = { data: { src: JSON.stringify({ value: setValue }) } }
    this.emitEvent(caseName, Constants.EVENT_ID_CHANGE_DATA, eventData);
  }

  registerDataChange(callBack) {
    this.callBack = callBack
    this.onEvent(Constants.EVENT_ID_CHANGE_DATA);
  }

  private onEvent(eventId: number) {
    var stateChangeEvent = {
      eventId: eventId,
      priority: events_emitter.EventPriority.LOW
    }
    events_emitter.off(eventId)
    events_emitter.on(stateChangeEvent, this.stateChangeCallBack);
  }

  private static emitEvent(tag, eventId, eventData) {
    var innerEvent = {
      eventId: eventId,
      priority: events_emitter.EventPriority.LOW
    }
    events_emitter.emit(innerEvent, eventData);
  }

  private stateChangeCallBack = (eventData) => {
    if (eventData != null) {
      if (eventData.data.src != null) {
        let src = JSON.parse(eventData.data.src);
        this.callBack(src.value);
      }
    }
  }
}

let attrsManager = new AttrsManager();

export default attrsManager as AttrsManager;