function saveSub(str, fileListTest, preds, params)

fn = ['Master', num2str(params.master), str, '.csv'];

figure
histogram(preds)
title(fn)

fileListTest.Class(:,1) = preds;
tmp = [fileListTest(:,'File'), fileListTest(:,'Class')];
disp(['Saving: ', fn])
writetable(tmp, fn)