import React, { useState } from "react"
import {useLocation} from '@docusaurus/router';
import { convertBase64ToBinary } from "../../react-qroma-lib/qroma-lib/utils";
import { ShareableAnimation } from "../../qroma-proto/qroma-lights-types";
import { Box, Container } from "@mui/material";
import { DeviceConnectionPanel } from "../DeviceConnectionPanel";
import { useQromaLightsApi } from "../api/QromaLightsApi";
import { ApplyConnectedQromaLightsAnimationPanel } from "./ApplyConnectedQromaLightsAnimationPanel";
import { convertQromaStripColorToHexColor } from "../app_utils";
import { FADE_SPEED_LABELS, PATTERN_LABELS, PATTERN_VALUES, PIXEL_SIZE_LABELS } from "../ws2812fx/EnumValues";


export const QromaLightsShareAnimationComponent = () => {

  const qromaLightsApi = useQromaLightsApi();
  
  const location = useLocation();
  const hash: string = location.hash;
  const isValid = hash.startsWith("#/");

  if (!isValid) {
    return <div>
      Invalid Base 64 message path. Paths must start with <b>#/</b>.
    </div>
  }

  const b64Content = hash.substring(2);
  const messageBytes = convertBase64ToBinary(b64Content);

  const shareableAnimation = ShareableAnimation.fromBinary(messageBytes);
  console.log(shareableAnimation)

  const animation = shareableAnimation.animation;

  console.log("PATTERN_LABELS")
  console.log(PATTERN_LABELS)
  console.log(PATTERN_VALUES)


  return (
    <>
      <Container maxWidth="xs" sx={{
        textAlign: 'center',
        border: '1px dashed grey' 
        }}>
        <Box
          sx={{ 
            p: 2,
            textAlign: 'left',
            // border: '1px dashed grey' 
          }}
          >
          <div>
            <div>Name: {shareableAnimation.name}</div>
            <div>Pattern: {PATTERN_LABELS[animation.pattern]}</div>
            <div>Color 1: {convertQromaStripColorToHexColor(animation.color1)}</div>
            <div>Color 2: {convertQromaStripColorToHexColor(animation.color2)}</div>
            <div>Color 3: {convertQromaStripColorToHexColor(animation.color3)}</div>
            <div>Pixel Speed: {animation.speed}</div>
            <div>Fade Speed: {FADE_SPEED_LABELS[animation.fadeSpeed]}</div>
            <div>Pixel Size: {PIXEL_SIZE_LABELS[animation.size]}</div>
            <div>Reverse Direction: {animation.reversed ? "Yes" : "No"}</div>
            <div>Use Gamma Correction: {animation.useGammaCorrection ? "Yes" : "No"}</div>
          </div>
        </Box>

        <Box
          sx={{ 
            p: 2,
            textAlign: 'center',
            // border: '1px dashed grey' 
          }}
          >
          <DeviceConnectionPanel
            qromaLightsApi={qromaLightsApi}
            >
            <ApplyConnectedQromaLightsAnimationPanel
              qromaLightsApi={qromaLightsApi}
              />
          </DeviceConnectionPanel>
        </Box>
      </Container>
    </>
  )
}
