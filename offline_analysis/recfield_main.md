# recfield_main
## Steps in recfield_main
1. Select project directory with config, labels, and data
2. Format relative response matrix from neural data
3. Run receptive field analysis  
    * If cluster_analysis is true, run cluster analysis
4. Plot PSTH and receptive field measures
## Config

### Global Variable
|Variable Name|Type| Description |
|:-----------:|:--:| :----------:|
|dir_name|char/str|Name of directory with data. Typically subject ID|
|include_dir|boolean|Controls if directory passes through main|
|include_sessions|int|Controls if a given recording session file is analyzed|
|psth_type|char/str|Determins if psth, pca, or ica data is used|
|bin_size|numerical|Temporal resolution of data is binning, or temporal resolution of relative response|
|window_start|numerical|Start of global event centered around trial onset|
|window_end|numerical|End of global event centered around trial onset|
|baseline_start|numerical|Start of baseline window|
|baseline_end|numerical|End of baseline window|
|response_start|numerical|Start of response window|
|response_end|numerical|End of response window|

### Creating relative response
|Variable Name|Type| Description |
|:-----------:|:--:| :----------:|
|creaste_psth (should change name)|boolean|Controls if creating relative response from parsed spike data|
|trial_range|numerical|If creating relative response, selects which trials are used to make relative response|
|include_events|char/str|If creating relative response, selects which events are used to make relative response|

### Receptive Field Analysis
|Variable Name|Type| Description |
|:-----------:|:--:| :----------:|
|mixed_smoothing|boolean|True: fbl, lbl, and duration metrics found on smoothed psth. False: All metrics are found on smoothed psth|
|span|int|Controls smoothing of psth with moving average filter. Span < 3: No smoothing, Span >= 3: smoothing (if even, span = span - 1. See [Matlab's smooth documentation](https://www.mathworks.com/help/curvefit/smooth.html) for more detail)|
|threshold_scalar|numerical|Scales standard deviation of baseline psth|
|consec_bins|numerical|Number of consecutive bins required above threshold for significant response|
|sig_check (should change to be strings)|Numerical|0: no stat test, 1: paired t-test, 2: paired ks-test. Compares baseline psth and response psth to see if they are significantly different|
|cell_sig_alpha (should change name)|numerical|Controls alpha for statistical tests|
### Cluster Analysis
|Variable Name|Type| Description |
|:-----------:|:--:| :----------:|
|cluser_analysis|boolean|True: does cluster analysis False: skips cluster analysis|
|bin_gap|numerical|consecutive number of bins below threshold needed to differentiate between clustered responses in response window|
|make_psth_graphs|boolean|True: Make psth graphs False: Skips graphing|
|plot_rf|boolean|True: Plot metrics from recfield analysis False: Skips plotting metrics|
|sub_cols|int|number of visible columns shown on channel subplot|
sub_rows|int|number of visible rows shown on channel subplot|
### Normalized Variance
|Variable Name|Type| Description |
|:-----------:|:--:| :----------:|
|epsilon|numerical|Number to ensure there is no division of 0 when finding normalized variance|
|norm_var_scaling|numerical|This is variable C in the normalized variance paper. Scales std, see paper for more details|