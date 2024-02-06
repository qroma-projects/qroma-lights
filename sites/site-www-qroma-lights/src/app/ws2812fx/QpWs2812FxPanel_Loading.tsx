import React, { useState } from 'react';
import { QromaPointDetails } from '../../../proto-ts/qroma-point-config';
import { Tab, Tabs } from '@mui/material';
import { QButton } from '../input-controls/QButton';


type QpWs2812FxPanel_LoadingProps = {
  qromaPoint: QromaPointDetails
  // loadFakeConfig: () => void
  configLoadingStatus: string
}


interface TabPanelProps {
  children?: React.ReactNode;
  index: number;
  value: number;
}

function TabPanel(props: TabPanelProps) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <>
          {children}
        </>
      )}
    </div>
  );
}

function a11yProps(index: number) {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tabpanel-${index}`,
  };
}

const QpWs2812FxPanel_Loading = (props: QpWs2812FxPanel_LoadingProps) => {

  const [tabIndex, setTabIndex] = useState(0);

  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setTabIndex(newValue);
  };

  return (
    <>
      <Tabs value={tabIndex} onChange={handleChange} aria-label="basic tabs example">
        <Tab label="Color" {...a11yProps(0)} />
        <Tab label="Flash" {...a11yProps(1)} />
        <Tab label="Configuration" {...a11yProps(2)} />
      </Tabs>
      {props.configLoadingStatus}

      {/* <QButton onClick={() => props.loadFakeConfig()}>Get Fake Config</QButton>  */}
    </>
  )
}

export default QpWs2812FxPanel_Loading;