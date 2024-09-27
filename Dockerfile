FROM rstudio/plumber:latest

COPY . .

# RUN R -e "install.packages('ggplot2')"

EXPOSE 7860

CMD ["Rscript", "./src/pr.R"]
