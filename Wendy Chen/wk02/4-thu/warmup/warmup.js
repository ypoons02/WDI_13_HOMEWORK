/*
Write a program to decode this message:
FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH
YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.

This is a form of cryptography known as the Caesar Cipher.
It has a shift parameter of 3.

The alphabet is normally:
ABCDEFGHIJKLMNOPQRSTUVWXYZ

The alphabet with the shift parameter of 3 is now as follows:
DEFGHIJKLMNOPQRSTUVWXYZABC

Extension:
Write the program to encode plain text into messages.

CaesarCipher.encode('TWO SYMBOLS KISSING EACH OTHER')
Extension 2:
Write the program to encode it with any shift parameter.

Send each other secret messages.
*/

//var message = "FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKHYDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.";

var message = "TWO SYMBOLS KISSING EACH OTHER";
var shiftAmt = 3;

function decode(message){
  var decodeMessage = message.slice(shiftAmt)+" " +message.substring(0, shiftAmt);
  decodeMessage = decodeMessage.slice(1);
  console.log("Message decoded:"+decodeMessage);
  return decodeMessage;
}

function encode(message){
  var sliceShiftamt = shiftAmt+1;
  var encodeMessage = message.slice(-sliceShiftamt)+" "+message.substring(0, message.length-shiftAmt);
  encodeMessage = encodeMessage.slice(1);
  console.log("Message encoded:"+encodeMessage);
  return encodeMessage;
}

var decodeMsg = decode(message);
var encodeMsg = encode(decodeMsg);
