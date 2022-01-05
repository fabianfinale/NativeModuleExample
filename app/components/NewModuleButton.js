import React from 'react';
import {Button} from 'react-native';
import CalendarModule, {DEFAULT_EVENT_NAME} from './utils/NativeCalendarModule';

const NewModuleButton = () => {
  const onPress = () => {
    console.log('We will invoke the native module here!');
    console.log('DEFAULT_EVENT_NAME', DEFAULT_EVENT_NAME);
    CalendarModule.createCalendarEvent(
      'testName',
      'testLocation',
      error => {
        error && console.log(`Error found! ${error}`);
      },
      eventId => {
        console.log(`Created a new event with id ${eventId}`);
      },
    );
  };

  return (
    <Button
      title="Click to invoke your native module!"
      color="#841584"
      onPress={onPress}
    />
  );
};

export default NewModuleButton;
