clc;
clear;

TrainingAcc = [
0.4856 
0.8556 
0.9319 
0.9689 
0.9840 
0.9906 
0.9946 
0.9958 
0.9974 
0.9976 
0.9975 
0.9982 
0.9979 
0.9985 
0.9983   
]

TrainingLoss = [
2.1158 
0.4871 
0.2300 
0.1075 
0.0602 
0.0373 
0.0236 
0.0169 
0.0099 
0.0075 
0.0069 
0.0053 
0.0053 
0.0042 
0.0043  
]

epoch = 15;


TestingInputBest = 0.9433;
TestingBest = zeros(epoch, 1);
for i = 1:epoch
    TestingBest(i) = TestingInputBest;
end


figure,
subplot('Position', [0.08 0.1 0.35 0.55]),
title('Accuracy', 'FontSize',18);hold on;

% ACC plot
plot(TrainingAcc, 'LineWidth', 1.2);hold on;
%plot(TestingAcc, 'LineWidth', 1.2);hold on;

plot(TestingBest, 'LineWidth', 1.2);hold on;

axis([0 epoch 0 1]);hold on;
legend({'Training Accuracy','Testing Accuracy', 'Best Testing Accuracy'},'Location','southwest');
xlabel('Epoch', 'FontSize',18);

% Loss plot
subplot('Position', [0.58 0.1 0.35 0.55]),
title('Loss', 'FontSize',18);hold on;
plot(TrainingLoss, 'LineWidth', 1.2);hold on;
axis([0 epoch 0 2.5]);hold on;
legend({'Training Loss'},'Location','southwest');
xlabel('Epoch', 'FontSize',18);


% Annotations
axes( 'Position', [0, 0.9, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'Plot Result', 'FontSize', 28', 'FontWeight', 'Bold', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.8, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'epoch = 15, batch size = 16, SGD optimizer, LR = 0.01,', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.75, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'Using Resnet152 to design a new network, Data augmentation : flip horizontally and vertically', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;
  
axes( 'Position', [0, 0.7, 1, 5] ) ;
set( gca, 'Color', 'None', 'XColor', 'None', 'YColor', 'None' ) ;
text( 0.5, 0, 'Testing on best result model (Acc : 94.33%, HW2 Acc : 90.97%)', 'FontSize', 20', ...
      'HorizontalAlignment', 'Center', 'VerticalAlignment', 'Bottom' ) ;


