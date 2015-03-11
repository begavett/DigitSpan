# The MIT License (MIT)
#
# Copyright (c) 2015 Brandon Gavett

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#   
#   The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

shinyUI(fluidPage(
  title = "WAIS-III Digit Span Errors",
  fluidRow(
    column(12,
           h2("WAIS-III Digit Span Errors"))),
  fluidRow(
    column(6,
           h4("Digits Forward"),
           numericInput("f1.1", "1-7",17,min=0,max=999999999),
           textOutput("f1.1.out"),
           numericInput("f1.2", "6-3",63,min=0,max=999999999),
           textOutput("f1.2.out"),
           numericInput("f2.1", "5-8-2",582,min=0,max=999999999),
           textOutput("f2.1.out"),
           numericInput("f2.2", "6-9-4",694,min=0,max=999999999),
           textOutput("f2.2.out"),
           numericInput("f3.1", "6-4-3-9",6439,min=0,max=999999999),
           textOutput("f3.1.out"),
           numericInput("f3.2", "7-2-8-6",7286,min=0,max=999999999),
           textOutput("f3.2.out"),
           numericInput("f4.1", "4-2-7-3-1",42731,min=0,max=999999999),
           textOutput("f4.1.out"),
           numericInput("f4.2", "7-5-8-3-6",75836,min=0,max=999999999),
           textOutput("f4.2.out"),
           numericInput("f5.1", "6-1-9-4-7-3",619473,min=0,max=999999999),
           textOutput("f5.1.out"),
           numericInput("f5.2", "3-9-2-4-8-7",392487,min=0,max=999999999),
           textOutput("f5.2.out"),
           numericInput("f6.1", "5-9-1-7-4-2-8",5917428,min=0,max=999999999),
           textOutput("f6.1.out"),
           numericInput("f6.2", "4-1-7-9-3-8-6",4179386,min=0,max=999999999),
           textOutput("f6.2.out"),
           numericInput("f7.1", "5-8-1-9-2-6-4-7",58192647,min=0,max=999999999),
           textOutput("f7.1.out"),
           numericInput("f7.2", "3-8-2-9-5-1-7-4",38295174,min=0,max=999999999),
           textOutput("f7.2.out"),
           numericInput("f8.1", "2-7-5-8-6-2-5-8-4",275862584,min=0,max=999999999),
           textOutput("f8.1.out"),
           numericInput("f8.2", "7-1-3-9-4-2-5-6-8",713942568,min=0,max=999999999),
           textOutput("f8.2.out")),
    column(6,
           h4("Digits Backward"),
           numericInput("b1.1", "2-4",42,min=0,max=999999999),
           textOutput("b1.1.out"),
           numericInput("b1.2", "5-7",75,min=0,max=999999999),
           textOutput("b1.2.out"),
           numericInput("b2.1", "6-2-9",926,min=0,max=999999999),
           textOutput("b2.1.out"),
           numericInput("b2.2", "4-1-5",514,min=0,max=999999999),
           textOutput("b2.2.out"),
           numericInput("b3.1", "3-2-7-9",9723,min=0,max=999999999),
           textOutput("b3.1.out"),
           numericInput("b3.2", "4-9-6-8",8694,min=0,max=999999999),
           textOutput("b3.2.out"),
           numericInput("b4.1", "1-5-2-8-6",68251,min=0,max=999999999),
           textOutput("b4.1.out"),
           numericInput("b4.2", "6-1-8-4-3",34816,min=0,max=999999999),
           textOutput("b4.2.out"),
           numericInput("b5.1", "5-3-9-4-1-8",814935,min=0,max=999999999),
           textOutput("b5.1.out"),
           numericInput("b5.2", "7-2-4-8-5-6",658427,min=0,max=999999999),
           textOutput("b5.2.out"),
           numericInput("b6.1", "8-1-2-9-3-6-5",5639218,min=0,max=999999999),
           textOutput("b6.1.out"),
           numericInput("b6.2", "4-7-3-9-1-2-8",8219374,min=0,max=999999999),
           textOutput("b6.2.out"),
           numericInput("b7.1", "9-4-3-7-6-2-5-8",85267349,min=0,max=999999999),
           textOutput("b7.1.out"),
           numericInput("b7.2", "7-2-8-1-9-6-5-3",35691827,min=0,max=999999999),
           textOutput("b7.2.out")))
    ))