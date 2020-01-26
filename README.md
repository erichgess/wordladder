# Word Ladder
Word Ladder solves the word ladder game: given a dictionary of words and two words from that dictionary (a starting word, `S`, and a destination word, `D`), Word Ladder will attempt to tranform `S` into `D` by changing a single letter at a time, such that, each subsequent word is in the given 
dictionary.

### Example:
Starting word is `cat` ending word is `dog`, the sequence would be as follows:

1. `cat`
2. `cot`
3. `cog`
4. `dog`

## Purpose
The purpose of this project is to be a practice arena for improving performance optimization skills.  The goal is to make creating
the graph from the dictionary as fast as possible.

It also serves as a source of inspiration for creating tools and strategies to help with performance optimization.

## Setup Notes
### Performance Investigation
These files and scripts are related to doing performance investigations.  Doing many runs of Word Ladder while changing a single
configuration parameter, then collecting metrics in a way that they can be charted in Excel.

1. `bucketPerf.sh` - Runs Word Ladder with increasing number of buckets and captures the performance metrics to a CSV output
2. `wordladder - analysis.xlsx` - An Excel workbook pulling together different performance tests and breaking them down
for comparison and analysis.

### Git Hooks
One of the biggest challenges of optimization is keeping track of all the small code changes (and large changes) which you make
and how those impact performance.  To make that easy and consistent, there are two Git Hooks which will automatically run performance
tests for any code change make, along with a CPU and Memory Profile, when those changes are committed to Git.  It appends a high level
performance metric to you commit comment, so you can get a history of every change you made and how it impacted performance simply by
reading through the Git Log. The hooks also capture CPU and Memory profiles and organizes them within a subdirectory named after the
current branch and timestamped (the location of profiler data is also appended to each Git commit comment).

The two Git Hooks are:

1. `./pre-commit` (Only runs if a `.go` file has been modified) - On commit, run unit tests and a performance test.  If the unit tests fails, 
the commit will fail. Profiler results are save to `./profiles/<branch-name>/<timestamp>/<profile data>`. Performance data is also written to the file 
`/tmp/wordladder.stat` so that the `commit-msg` hook can append that information to your comment.  Note: this saves binary profiling data to the git.
repo, for a small practice project its fine but a better solution would be to save data to another directory or to something like S3.
2. `./commit-msg` - This hooks takes the high level results from the performance test run in the `pre-commit`
and appends them to your comment.

#### Git Hook Setup
The Git Hooks are not automatically setup, you'll need to add them to your local `.git/` configuration when this repo is cloned.  Do this
by creating symbolic links from `.git/hooks/.` to the respective hooks.  For example:

```
cd ./.git/hooks
ln -s -f ../../commit-msg commit-msg
ln -s -f ../../pre-commit pre-commit
```

Using symbolic links means that any changes which are made to the hooks will also be tracked by Git, without having to do any duplicate
work.