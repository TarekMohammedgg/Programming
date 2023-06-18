import pytube
import os

# Prompt user for YouTube video URL
video_url = input("Enter the URL of the YouTube video you want to download: ")

# Create a Pytube YouTube object
youtube_video = pytube.YouTube(video_url)

# Get the video stream with a resolution of 360p
video_stream = youtube_video.streams.filter(res="360p").first()

# Set the download directory and filename
download_dir = r"C:\Users\tarek\Downloads\videos"
youtube_video.title = youtube_video.title.replace(" " , "_") ;
download_filename = youtube_video.title + ".mp4"

download_path = os.path.join(download_dir, download_filename)

# Download the video
print("Downloading...")
video_stream.download(output_path=download_dir, filename=download_filename)
print("Download complete!")

# Move the downloaded video to the specified directory
print("Moving video...")
os.renames(download_path, os.path.join(download_dir, "videos", download_filename))
print("Video moved successfully!")
