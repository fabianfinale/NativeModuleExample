import {NativeModules} from 'react-native';

/**
* This exposes the native CalendarModule module as a JS module. This has a
* function 'createCalendarEvent' which takes the following parameters:

* 1. String name: A string representing the name of the event
* 2. String location: A string representing the location of the event
*/
const {CalendarModule} = NativeModules;
export const {DEFAULT_EVENT_NAME} = CalendarModule.getConstants();
export default CalendarModule;
