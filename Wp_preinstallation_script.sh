#!/bin/bash -e
docker ps
echo "Enter docker id: ";
read docker_id;
dockercli="docker exec -it $docker_id bash";
$dockercli wp site empty
$dockercli wp core update

arr=(seo-by-rank-math updraftplus ewww-image-optimizer elementor  header-footer-elementor); 
arr2=(seo-by-rank-math updraftplus ewww-image-optimizer advanced-custom-fields); 
arr3=(twentysixteen twentyseventeen twentytwenty twentynineteen twentytwentyone);
arr4=(hello akismet);


 read -p "Do you want default plugins in your WordPress  [yn]" answer
if [[ $answer = n ]] ; then
  for l in "${arr4[@]}"
		do
  			$dockercli wp plugin delete  $l
		done
else
	echo "Doing nothing";
fi

read -p "Do you want to install some suggested plugins in your WordPress ? [yn]" answer
if [[ $answer = y ]] ; then
    read -p "Do you want to install some suggested plugins with elementor in your WordPress ? [yn]" answer2
    if [[ $answer2 = y ]] ; then
 		for i in "${arr[@]}"
		do
  			$dockercli wp plugin install $i
		done
    elif [[ $answer2 = n ]] ; then
 		for j in "${arr2[@]}"
		do
  			$dockercli wp plugin install $j
		done
	fi

read -p "Do you want to activate  suggested plugins in your WordPress ? [yn]" answer
if [[ $answer = y ]] ; then
	read -p "Do you want to activate  suggested plugins with elementor or without elementor in your WordPress ? [yn]" answer3
    if [[ $answer3 = y ]] ; then
 		for i in "${arr[@]}"
		do
  			$dockercli wp plugin activate $i
		done
    elif [[ $answer3 = n ]] ; then
 		for j in "${arr2[@]}"
		do
  			$dockercli wp plugin activate $j
		done
	else
		echo "Doing nothing";
	fi
		
else
	echo "Doing nothing";

fi

else
	echo "Doing nothing";

fi	

read -p "Do you want a sample themes in your WordPress ? [yn]" answer
if [[ $answer = y ]] ; then
echo Enter your sample theme name
read theme_name
echo Enter sample theme author name
read author_name
echo enter the theme domain name
read domain_name
$dockercli wp scaffold _s $domain_name --theme_name="$theme_name" --author="$author_name"

else
	echo "Doing nothing";
fi

$dockercli wp scaffold child-theme "${theme_name}-child" --parent_theme=$domain_name --author="$author_name"

read -p "Do you want to activate sample child themes in your WordPress ? [yn]" answer

if [[ $answer = y ]] ; then
$dockercli wp theme activate "${theme_name}-child"
else
	echo "Doing nothing";
fi

read -p "Do you want default themes in your WordPress ? [yn]" answer
if [[ $answer = n ]] ; then

	for k in "${arr3[@]}"
		do
  			$dockercli wp theme delete $k
		done
else
	echo "Doing nothing";
fi



