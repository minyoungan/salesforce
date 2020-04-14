/* 
  Encrpyt in Salesforce Sales Cloud 
  Mode: CBC
  Key Size in Bits: 256
  IV: 1234567890123456
  Secrety Key: I Am Thirty Two Bytes Long 12345
*/

Blob cryptoKey = Blob.valueOf('I Am Thirty Two Bytes Long 12345');
Blob encryptedData = Crypto.encrypt('AES256', cryptoKey, Blob.valueOf('1234567890123456'), Blob.valueOf('Hello World!'));
String Output = EncodingUtil.base64Encode(encryptedData);
system.debug('Encrypted====== ' + Output);

/* 
  Output: eBirC8VcIIE9rjXNew1f6A==
*/
