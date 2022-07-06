<div align="center">
  <a href="https://github.com/codeschooldropout/docker-nanominer">
    <h3 align="center">docker-nanominer</h3>
  </a>

  <p align="center">
    <br />
    <br />
    <a href="https://github.com/codeschooldropout/unraid-nvidia-overclock/issues">Report Bug</a>
    ·
    <a href="https://github.com/codeschooldropout/unraid-nvidia-overclock/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

I use this on Unraid but not with it's built in docker system due to issues with mounting single files into images.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps.

### Prerequisites

Install plugins via Community Applications in Unraid

* [Unraid - Nvidia Driver](https://forums.unraid.net/topic/98978-plugin-nvidia-driver/)

### Installation

1. Clone the repo somewhere on your array - i.e. /mnt/user/appdata/docker-nanominer.git

   ```sh
   git clone https://github.com/codeschooldropout/docker-nanominer.git
   ```

2. Deploy via command line since Unraid interface can't handle files?

    ```sh
    docker run --privileged -it --name='docker-nanominer' --runtime=nvidia -p '8081:8081' -v ${PWD}/config_satori_merged.ini:/nanominer/config.ini codeschooldropout/docker-nanominer
    ```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

* [ ] Figure out way around loading config file that isn't 3000 env vars

See the [open issues](https://github.com/codeschooldropout/docker-nanominer) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

?

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

codeschooldropout - [@codedropout](https://twitter.com/codedropout)

Project Link: [https://github.com/codeschooldropout/docker-nanominer](https://github.com/codeschooldropout/docker-nanominer)

<p align="right">(<a href="#top">back to top</a>)</p>
