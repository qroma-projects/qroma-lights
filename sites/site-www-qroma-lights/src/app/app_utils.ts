
export const convertHexColorToRgbBytes = (hexColor: string): Uint8Array => {
  let hex = hexColor;
  if (hexColor.startsWith('#')) {
    hex = hexColor.slice(1);
  }

  var bigint = parseInt(hex, 16);
  var r = (bigint >> 16) & 255;
  var g = (bigint >> 8) & 255;
  var b = bigint & 255;

  const retval = new Uint8Array(3);
  retval[0] = r;
  retval[1] = g;
  retval[2] = b;

  return retval;
}


const byteToHex = (b: number): string => {
  const unsignedByte = b & 0xff;

  if (unsignedByte < 16) {
    return '0' + unsignedByte.toString(16);
  } else {
    return unsignedByte.toString(16);
  }
}


export const convertRgbBytesToHexColor = (r: number, g: number, b: number): string => {

  const rHex = byteToHex(r);
  const gHex = byteToHex(g);
  const bHex = byteToHex(b);
  let hex = "#" + rHex + gHex + bHex;

  return hex;
}


export const createNumberRange = (rangeMin: number, rangeMax: number): number[] => {
  // const offset = rangeMin + 1;
  // const offset = rangeMin + 0;
  const numberRange = Array.from(Array(rangeMax).keys()).map(x => x + rangeMin);
  return numberRange;
}
