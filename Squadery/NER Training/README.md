## Custom NER Training

### Finetuning Transformer-based BERT Model

### Dataset:
CoNLL-2003 is a named entity recognition dataset released as a part of CoNLL-2003 shared task: language-independent named entity recognition. The data consists of eight files covering two languages: English and German. For each of the languages there is a training file, a development file, a test file and a large file with unannotated data.

There are many different CoNLL formats since CoNLL is a different shared task each year.

You can get the CoNLL data with IOB format from [here](https://deepai.org/dataset/conll-2003-english).

The training of NER is done using CoNLL data. The data needs to be appropriately formatted before feeding it for training the model.

Steps:
- Convert CoNLL data into json format with required values
- Convert json format into spacy format


 ### Training the model
 Training the Spacy pipeline needs a config.cfg configuration file that includes all settings and hyperparameters.

Download the base config file from [Spacy documentation.](https://spacy.io/usage/training) <br> 

Then, auto-fill the remaining defaults to get config.cfg 
```bash
python -m spacy init fill-config base_config.cfg config.cfg
```

Then, Train spaCy pipeline with config file generated from above

```bash
python -m spacy train config.cfg --output ./output --paths.train ./train.spacy --paths.dev ./dev.spacy
```

Now, your model will be saved in the specified directory with the specified name.

