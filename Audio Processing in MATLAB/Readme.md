# DSP Project

This project is a Digital Signal Processing (DSP) tool that enables users to interact with an audio file, manipulate it by adding noise, and apply various filters. It provides a user-friendly interface to visualize the time-domain waveform and frequency-domain magnitude response of the original, noisy, and filtered signals. Users can also play the audio corresponding to these signals.

## Features

- **Audio File Input**: Users can upload their own audio file (e.g., `Rain + bird.mp3`).
- **Sampling Frequency**: Define a custom sampling frequency to resample the input audio.
- **Noise Addition**: Add Gaussian white noise to the audio signal with a user-defined amplitude.
- **Filters**:
  - **High-Pass Filter**: Removes low-frequency components below the specified cutoff frequency.
  - **Low-Pass Filter**: Removes high-frequency components above the specified cutoff frequency.
  - **Band-Pass Filter**: Allows frequencies within a specified range to pass through.
  - **Band-Stop Filter**: Blocks frequencies within a specified range.
- **Visualization**:
  - Time-domain waveforms for the original, noisy, and filtered signals.
  - Frequency-domain magnitude response for these signals.
- **Audio Playback**: Listen to the original, noisy, and filtered audio directly from the app.

## Usage Instructions

### Initial Setup

1. Upload your audio file in `.mp3` format (e.g., `Rain + bird.mp3`).
2. Specify the desired sampling frequency in the "Sampling Frequency (Hz)" field.

### Working with the Audio Signal

1. **Visualizing the Original Audio**:
   - The audio file is predefined in the code (e.g., Rain + bird.mp3) and can only be changed by altering the code.
   - Every sound signal has a predefined sampling frequency. However, users can specify a custom sampling frequency in the "Sampling Frequency (Hz)" field to resample the audio.

2. **Adding Noise**:
   - Specify the noise amplitude in the "Noise Amplitude" field.
   - Click the "Noise" button to add Gaussian white noise to the signal.
   - Visualize the noisy signal's time and frequency responses.
   - Play the noisy audio to hear it.

3. **Applying Filters**:
   - Specify the cutoff frequencies for the desired filter:
     - High-Pass: Set the cutoff frequency in the "Cutoff Frequency (Hz)" field and click "High-Pass Filter."
     - Low-Pass: Set the cutoff frequency in the "Cutoff Frequency (Hz)" field and click "Low-Pass Filter."
     - Band-Pass: Set the lower and higher cutoff frequencies and click "Band-Pass Filter."
     - Band-Stop: Set the lower and upper cutoff frequencies and click "Band-Stop Filter."
   - Visualize the time and frequency responses of the filtered signal.
   - Play the filtered audio to hear it.

### Visualizations

- **Original Signal**: Displays the time-domain waveform and its corresponding magnitude spectrum.
- **Noisy Signal**: Shows how the addition of noise affects the signal in both time and frequency domains.
- **Filtered Signal**: Demonstrates the impact of applying high-pass, low-pass, band-pass, or band-stop filters on the noisy signal.

## Prerequisites

- MATLAB or MATLAB Runtime Environment (if deploying as a standalone application).
- Audio file (e.g., `Rain + bird.mp3`).

## File Details

- **Main Code**: The DSP application code integrates GUI elements and signal processing functionality.
- **Audio File**: The uploaded audio file is processed and analyzed.
- **Generated Outputs**:
  - Time-domain waveforms.
  - Frequency-domain magnitude responses.

## Future Enhancements

- Allow users to export filtered audio and import files as well.
- Add support for more audio formats.
- Provide real-time audio processing.
