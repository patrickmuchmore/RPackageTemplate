context("rcpparma functions")

test_that("rcpparma_hello_world is diagonal matrix of sevens", {
            expect_identical(r_hello_world(), rcpparma_hello_world())
        })

test_that("functions with a vector argument give correct results", {
            testVector = c(1, 2, 3)
            innerProduct = as.numeric(testVector %*% testVector)
            outerProduct = testVector %*% t(testVector)
            expect_identical(rcpparma_innerproduct(testVector), innerProduct)
            expect_identical(rcpparma_outerproduct(testVector), outerProduct)
            expect_identical(rcpparma_bothproducts(testVector), list(inner=innerProduct, outer=outerProduct))
        })
