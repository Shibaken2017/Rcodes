  #make coilumn chart
  library(ggplot2)
  library(gcookbook)

##########################recipe3.1##################################################################################
#x is a categorical variable
print(colnames(pg_mean))
ggplot(pg_mean,aes(x=group,y=weight))+geom_bar(stat="identity")



###x is continuous variable
ggplot(BOD,aes(x=Time,y=demand))+geom_bar(stat="identity",fill="lightblue",colour="black")





#####################################################recipe3.2####################################################################
#dodge,  
#without stat="identyty",error is issued  
ggplot(cabbage_exp,aes(x=Date,y=Weight,fill=Cultivar))+geom_bar(position="dodge",colour="black",stat="identity")


#with palette ,coloring improved
ggplot(cabbage_exp,aes(x=Date,y=Weight,fill=Cultivar))+geom_bar(position="dodge",colour="black",stat="identity")+scale_fill_brewer(palette = "Pastel1")








###########################receipe3.3#################################################################################################
#count chart

ggplot(diamonds,aes(x=cut))+geom_bar(fill="lightblue")






#############################################recipe3.4   ##########################
#sort ascending order,and choose data morethan 40th
upc<-subset(uspopchange,rank(Change)>40)



ggplot(upc,aes(x=Abb,y=Change,fill=Region))+geom_bar(stat="identity")



