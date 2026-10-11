# AI-Powered Sign Language Translation Platform 

A web based platform that helps bridge the communication gap between sign language users and non signers using Computer Vision, Deep Learning, and Large Language Models (LLMs).

The project supports real time and video based American Sign Language (ASL) translation, with features for converting signs to text and speech, translating text into signs, and communicating through video calls.

## About the Project

This project was developed as a graduation project to make sign language communication more accessible.

The main idea is to recognize ASL signs from video input, convert them into text, and generate more natural sentences using an LLM. The platform also supports speech output and text to sign translation, allowing communication in both directions.

For sign recognition, we used MediaPipe to extract hand and pose landmarks from video frames, then passed the resulting sequences to a Temporal Convolutional Network (TCN) to classify the signs.

The model achieved **92.36% accuracy on a 441-class subset of the ASL Citizen dataset**.

## Features

- **Real Time Sign Recognition:** Recognizes ASL signs from live camera input.
- **Video Based Translation:** Translates signs from recorded videos into text.
- **Sign to Text:** Converts recognized signs into readable text.
- **Sign to Speech:** Converts translation results into spoken audio.
- **Text to Sign:** Provides a way to translate text into sign language.
- **LLM Integration:** Generates more natural, context-aware sentences from recognized signs.
- **Confidence Scores:** Displays confidence information for sign predictions.
- **Video Calls:** Supports video-call communication within the platform.
- **User Authentication:** Allows users to access the platform through authentication.
- **Sign Browsing:** Lets users explore available signs and their representations.

## How It Works

The sign recognition pipeline follows these main steps:

1. **Input:** The user provides a live camera feed or a recorded video.
2. **Landmark Extraction:** MediaPipe extracts relevant hand and pose landmarks from the video frames.
3. **Preprocessing:** The extracted landmarks are processed and organized into sequences.
4. **Feature Engineering:** Transforming the extracted landmarks to other useful features, which will be the input to the model.
4. **Sign Classification:** A trained TCN analyzes the sequences and predicts the corresponding sign classes.
5. **Sentence Generation:** The recognized output is passed to an LLM to generate more coherent, context aware sentences.
6. **Output:** The platform presents the translated text and supports speech generation through its Sign to Speech feature.

The platform also includes a separate Text to Sign workflow for communication in the opposite direction.

## Model Performance

| Item | Details |
|---|---|
| Accuracy | 92.36% |
| Dataset | ASL Citizen |
| Number of classes | 441-class subset |
| Landmark extraction | MediaPipe |
| Classification model | Temporal Convolutional Network (TCN) |

The reported accuracy refers to sign classification on the specified dataset subset, not the accuracy of the entire translation platform.

## Technologies Used

- **Python** — AI and machine learning development
- **MediaPipe** — Hand and pose landmark extraction
- **OpenCV** — Image and video processing
- **TensorFlow / Keras** — Deep learning
- **Temporal Convolutional Network (TCN)** — Sign sequence classification
- **Large Language Models (LLMs)** — Context-aware sentence generation
- **Computer Vision and NLP** — Sign recognition and language processing
- **Web Technologies** — Platform development and integration


## Dataset

The project uses the [ASL Citizen dataset](https://www.kaggle.com/datasets/abd0kamel/asl-citizen/data) for sign recognition, with the reported evaluation covering a subset of 441 classes.

MediaPipe extracts landmarks from the video frames, allowing the model to learn from sequences of movements rather than treating each frame as an independent image.


## Future Improvements

- Expand the supported sign vocabulary.
- Improve recognition under different lighting conditions and backgrounds.
- Reduce inference time for smoother real time translation.
- Evaluate performance across different signers.
- Improve handling of uncertain predictions and sentence generation.

## Contributors

- Mariam Hany
- Demiana Ayman
- Kareem Mohamed
- Shahd Mohamed
- Yahya Ahmed
- Hussam Elsayed

## Acknowledgments

Thanks to the contributors of the ASL Citizen dataset and the open-source communities behind MediaPipe and TensorFlow.

---

**Graduation Project | Computer Engineering**

