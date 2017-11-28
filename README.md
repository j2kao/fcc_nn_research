# fcc_nn_research

Cleaned-up versions of notebooks used in researching public comments for FCC Proceeding 17-108 (Net Neutrality Repeal). I am posting the notebook for Exploratory Data Analysis first, and will include others as they are cleaned up.

## Where's the data?

See below in the prerequisites section.

## Recent Updates (11-27-2017)

4 more notebooks have been uploaded. Run in numerical order to reconstruct the data processing pipeline. Notebook 4 contains the charts. Data for the final couple notebooks is being uploaded and will be linked here tomorrow morning.

## Background Information

I did this project as a part of the coursework for [Metis](https://www.thisismetis.com/) and was shocked to see my analysis blow up online. Humbled by the attention but I'm sure experienced data scientists out there could glean even more insights from the work. Please share with the rest of us what else you find in the data! Tweet at me [@jeffykao](https://twitter.com/jeffykao). :-)

## Getting Started

This is just a rough sketch of the instructions to the get project up and running on your local machine. Once you get Anaconda installed on your machine, the libraries should be easy to install and the notebooks should be fairly straightforward to run. Instructions to install each library should be easily googlable (sp?).

### Prerequisites

#### Data

First set of data (text and duplicate counts only) [posted on kaggle](https://www.kaggle.com/jeffkao/proc_17_108_unique_comments_text_dupe_count). The README  on kaggle will contain links to other versions and subsets of the same dataset.

I'm working hard to get non-text data up as well and will let you know the progress by tweet [@jeffykao](https://twitter.com/jeffykao).

#### Python/Anaconda version

- Python 3.6.1 (64-bit)
- conda 4.3.29

#### Libraries used

- [NumPy](http://www.numpy.org)
- [scikit-learn](http://scikit-learn.org/stable/)
- [matplotlib](http://matplotlib.org)
- [pandas](http://pandas.pydata.org)
- [HDBSCAN](https://github.com/scikit-learn-contrib/hdbscan)
- [spaCy](https://spacy.io/usage/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* [@drob](https://twitter.com/drob) for putting the blog post on blast and giving me some great advice in the aftermath
* [@leland_mcinnes](https://twitter.com/leland_mcinnes) for authoring HDBSCAN
* [@bekcunning](https://twitter.com/bekcunning) for sending me the link that made me finally _write that g***** blog post!_
* [@prb_data](https://twitter.com/prb_data) & Joe Eddy, my instructors at [Metis](https://www.thisismetis.com/)
* [@AndrewDBS](https://twitter.com/AndrewDBS) who convinced me to get a twitter account
* My amazing & creative wife/editor who read through & greatly improved my drafts
* Sweat pants.
