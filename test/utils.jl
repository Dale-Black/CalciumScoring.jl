@testset ExtendedTestSet "mask_elements" begin
    @testset ExtendedTestSet "mask_elements" begin
        img = [
            1 10 1 1
            -2 -2 -2 -2
            1 1 1 1
            1 1 -2 1
            1 1 1 1
            -2 -2 -2 -2
        ]
        answer = Bool.([
            1 1 1 1
            0 0 0 0
            1 1 1 1
            1 1 1 1
            1 1 1 1
            0 0 0 0
        ])
        @test mask_elements(img, 0, 2) == answer
    end

    @testset ExtendedTestSet "mask_elements" begin
        img = [
            1 -2 -2 -2
            -2 -2 -2 -2
            1 -2 -2 -2
            -2 -2 -2 -2
            1 -2 -2 -2
            -2 -2 -2 -2
        ]
        answer = Bool.([
            1 0 0 0
            0 0 0 0
            1 0 0 0
            0 0 0 0
            1 0 0 0
            0 0 0 0
        ])
        @test mask_elements(img, 0, 2) == answer
    end
end
