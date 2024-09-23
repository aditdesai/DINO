coco_path=$1
python main.py \
	--output_dir logs/DINO/R50-MS4 -c config/DINO/DINO_4scale.py --coco_path $coco_path \
	--save_results --save_log --options lr=0.00025 epochs=30 num_classes=2 dn_labelbook_size=2 dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0
